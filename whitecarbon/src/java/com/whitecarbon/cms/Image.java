package com.whitecarbon.cms;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.TableGenerator;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="c_image")
public class Image implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.TABLE, generator="seqGenerator")  
	@TableGenerator(name="seqGenerator", table="ad_table_sequences",pkColumnName="TS_SEQUENCE_NAME",valueColumnName="TS_SEQUENCE_VALUE",
	                allocationSize=1 // flush every 1 insert  
	)
	@Column(name="C_IMAGE_ID", unique=true, nullable=false)
	private int imageId;
	
	@Column(name="C_IMAGE_URL", length=255)
	private String imageUrl;

    @Temporal( TemporalType.DATE)
	@Column(name="C_FROM_DATE", nullable=false)
	private Date fromDate;

	@Temporal( TemporalType.DATE)
	@Column(name="C_TO_DATE")
	private Date toDate;
	
	@Column(name="C_IS_ACTIVE")
	private boolean active;
	
	@Column(name="C_ROLE")
	private String role;
	
	@Column(name="C_IMAGE_SIZE")
	private String imageSize;
	
	@ManyToOne(cascade={CascadeType.ALL})
    @JoinColumn(name="C_PARENT_IMAGE_ID")
    private Image parent;
 
    @OneToMany(mappedBy="parent")
    private List<Image> thumbnails = new ArrayList<Image>();
	
    public Image() {
    }

	public int getImageId() {
		return imageId;
	}

	public void setImageId(int imageId) {
		this.imageId = imageId;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Date getFromDate() {
		return fromDate;
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}

	public Date getToDate() {
		return toDate;
	}

	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getImageSize() {
		return imageSize;
	}

	public void setImageSize(String imageSize) {
		this.imageSize = imageSize;
	}

	public Image getParent() {
		return parent;
	}

	public void setParent(Image parent) {
		this.parent = parent;
	}

	public List<Image> getThumbnails() {
		return thumbnails;
	}

	public void setThumbnails(List<Image> thumbnails) {
		this.thumbnails = thumbnails;
	}
}