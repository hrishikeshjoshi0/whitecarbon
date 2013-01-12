package whitecarbon

class RequirementsController {
	
	def mailService
	
    def index() { }
	
	def sendRequirementsForm() {
		def p = params
		if(params.form == 'solitaire') {
			def command = new SolitaireDiamondRequirementCommand()
			bindData(command, p)
			//Email
			mailService.sendMail {
				to command.email
				subject "New Enquiry About Solitaire Diamonds"
				html g.render(template:"SolitaireDiamondsEnquiry",bean : command, var : "command")
			}
			
		} else if(params.form == 'looseDiamonds') {
			def command = new LooseDiamondRequirementCommand()
			bindData(command, p)
			//Email
			mailService.sendMail {
				to command.email
				subject "New Enquiry About Loose Diamonds"
				html g.render(template:"LooseDiamondsEnquiry",bean : command, var : "command")
			}
		} else if(params.form == 'jewelry') {
			def command= new JewelryRequirementCommand()
			bindData(command, p)
			//Email
			mailService.sendMail {
				to command.email
				subject "New Enquiry About Jewelry"
				html g.render(template:"JewelryEnquiry",bean : command, var : "command")
			}
		}
		
		 
		render "";	
	}
	
	class BasicCommand {
		String name
		String company_name
		String email
		String mobileNo
		String officeNo
	}
	
	class LooseDiamondRequirementCommand extends BasicCommand {
		String form
		String loose_diamonds_shape
		Double loose_diamonds_qty_from
		Double loose_diamonds_qty_to
		String loose_diamonds_color_from
		String loose_diamonds_color_to
		String loose_diamonds_clarity_from
		String loose_diamonds_clarity_to
		String loose_diamonds_cut
		Double loose_diamonds_price_from
		Double loose_diamonds_price_to
	}
	
	class SolitaireDiamondRequirementCommand extends BasicCommand {
		String form
		String solitaire_shape
		String solitaire_single_pair
		Double weight_per_stone
		String solitaire_color_from
		String solitaire_color_to
		String solitaire_clarity_from
		String solitaire_clarity_to
		String solitaire_cut
		String solitaire_polish
		String solitaire_syymetry
		Double solitaire_price_from
		Double solitaire_price_to
	}
	
	class JewelryRequirementCommand extends BasicCommand { 
		String form
		String jewelry_category
		Double jewelry_price_from
		Double jewelry_price_to
	}
	
}
