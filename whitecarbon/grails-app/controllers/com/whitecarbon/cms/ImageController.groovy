package com.whitecarbon.cms

import org.springframework.dao.DataIntegrityViolationException

class ImageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }
	
	def indexPageImages() {
		def c = Image.createCriteria()
		def results = c.list {
			and {
				eq("role", "index")
				eq("active", true)
			}
		}
		
		def model = [images: results]
		render(template: "index", model: model)
	}
	
	def showcasePageImages() {
		def c = Image.createCriteria()
		def results = c.list {
			and {
				eq("role", params.role)
				eq("active", true)
				isNull("parent")
			}
		}
		
		def model = [images: results]
		render(template: "showcase", model: model)
	}

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [imageInstanceList: Image.list(params), imageInstanceTotal: Image.count()]
    }

    def create() {
        [imageInstance: new Image(params)]
    }
	
	def uploadImage() {
		
	}
	
	def uploadImageShowCase() {
	
	}
	
	def upload() {
		def image= new Image()
		
	    //handle uploaded file
	    def uploadedFile = request.getFile('payload')
	    if(!uploadedFile.empty){
	      println "Class: ${uploadedFile.class}"
	      println "Name: ${uploadedFile.name}"
	      println "OriginalFileName: ${uploadedFile.originalFilename}"
	      println "Size: ${uploadedFile.size}"
	      println "ContentType: ${uploadedFile.contentType}"
		  
	      def webRootDir = servletContext.getRealPath("/")
	      def userDir = new File(webRootDir, "/uploads")
	      userDir.mkdirs()
	      uploadedFile.transferTo( new File(userDir, uploadedFile.originalFilename))

		  image.fromDate = new Date()
		  image.imageUrl = uploadedFile.originalFilename
		  image.active = true
		  image.role = "index"
		  image.save(flush:true)
		  
	      if(!image.hasErrors()) {
	    	  flash.message = "Entry ${image.imageId} created" 
			  redirect(action:'list')
	      }
	      else {
	    	  render(view:'create',model:[imageInstance:image])
	      }
	    }
	}
	
	def uploadShowcaseImages() {
		def webRootDir = servletContext.getRealPath("/")
		def userDir = new File(webRootDir, "/uploads")
		userDir.mkdirs()
		
		def role = "SHOWCASE-" + params.role
		
		//handle uploaded file
		def image= new Image()
		image.role = role
		def uploadedFile = request.getFile('payload')
		if(!uploadedFile.empty){
		  uploadedFile.transferTo( new File(userDir, uploadedFile.originalFilename))

		  image.fromDate = new Date()
		  image.imageUrl = uploadedFile.originalFilename
		  image.active = true
		  image.save(flush:true)
		  
		  /*if(!image.hasErrors()) {
			  flash.message = "Entry ${image.imageId} created"
			  redirect(action:'list')
		  }
		  else {
			  render(view:'create',model:[imageInstance:image])
		  }*/
		}
		
		def thumbnail = new Image()
		thumbnail.role = role
		def uploadedThumbnailFile = request.getFile('payloadThumbnail')
		if(!uploadedThumbnailFile.empty){
			
		  uploadedThumbnailFile.transferTo( new File(userDir, uploadedThumbnailFile.originalFilename))

		  thumbnail.fromDate = new Date()
		  thumbnail.imageUrl = uploadedThumbnailFile.originalFilename
		  thumbnail.active = true
		  
		  thumbnail.parent = image
		  
		  /*if(!image.hasErrors()) {
			  flash.message = "Entry ${image.imageId} created"
			  redirect(action:'list')
		  }
		  else {
			  render(view:'create',model:[imageInstance:image])
		  }*/
		}
		
		image.thumbnails.add(thumbnail)
		thumbnail.parent = image
		thumbnail.save(flush:true)
		
		image.save()
		
		render(view:"uploadSuccess")
	}

    def save() {
        def imageInstance = new Image(params)
		
		imageInstance.role = params.role
		
        if (!imageInstance.save(flush: true)) {
            render(view: "create", model: [imageInstance: imageInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.id])
        redirect(action: "show", id: imageInstance.id)
    }

    def show(Long id) {
        def imageInstance = Image.get(id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), imageId])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def edit(Long id) {
        def imageInstance = Image.get(id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), imageId])
            redirect(action: "list")
            return
        }

        [imageInstance: imageInstance]
    }

    def update(Long id, Long version) {
        def imageInstance = Image.get(id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), id])
            redirect(action: "list")
            return
        }

        imageInstance.properties = params

        if (!imageInstance.save(flush: true)) {
            render(view: "edit", model: [imageInstance: imageInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'image.label', default: 'Image'), imageInstance.imageId])
        redirect(action: "show", id: imageInstance.imageId)
    }

    def delete(Long id) {
        def imageInstance = Image.get(id)
        if (!imageInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'image.label', default: 'Image'), id])
            redirect(action: "list")
            return
        }

        try {
            imageInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'image.label', default: 'Image'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'image.label', default: 'Image'), id])
            redirect(action: "show", id: id)
        }
    }
}
