package com.gsp.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Request")
public class Request {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="request_id")
		private Integer id;
		
		@NotEmpty(message="Company name cannot be blank")
		@Column(length=30)
		private String companyName;
		
		@NotEmpty(message="Model Number cannot be blank")
		@Column(length=20)
		private String modelNo;
		
		@NotEmpty(message="Problem description cannot be blank")
		@Column(length=100)
		private String problemDesc;
		
		@NotEmpty(message="Product Type cannot be blank")
		@Column(length=50)
		private String productType;
		
		@NotEmpty(message="Warrenty Status cannot be blank")
		@Column(length=10)
		private String warrantyStatus;
		
		@ManyToOne
		@JoinColumn(name="user_id")
		private User user; 
		
		@Column(length=50)
		private String status;
		
		@Column(length=2)
		private Integer rating;
		
		@Column(length=100)
		private String feedback;
		
		public Request() {
			super();
			System.out.println("In request Constructor");
		}

		public Request(String companyName, String modelNo, String problemDesc, String productType,
				String warrantyStatus) {
			super();
			this.companyName = companyName;
			this.modelNo = modelNo;
			this.problemDesc = problemDesc;
			this.productType = productType;
			this.warrantyStatus = warrantyStatus;
		}
		

		public Request(String status) {
			super();
			this.status = status;
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}
		
		public String getCompanyName() {
			return companyName;
		}
		public void setCompanyName(String companyName) {
			this.companyName = companyName;
		}
		
		public String getModelNo() {
			return modelNo;
		}
		public void setModelNo(String modelNo) {
			this.modelNo = modelNo;
		}
		
		public String getProblemDesc() {
			return problemDesc;
		}
		public void setProblemDesc(String problemDesc) {
			this.problemDesc = problemDesc;
		}
		
		public String getProductType() {
			return productType;
		}
		public void setProductType(String productType) {
			this.productType = productType;
		}
		
		public String getWarrantyStatus() {
			return warrantyStatus;
		}
		public void setWarrantyStatus(String warrantyStatus) {
			this.warrantyStatus = warrantyStatus;
		}
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		
		public Integer getRating() {
			return rating;
		}
		public void setRating(Integer rating) {
			this.rating = rating;
		}
		
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
		
		public String getFeedback() {
			return feedback;
		}
		public void setFeedback(String feedback) {
			this.feedback = feedback;
		}

		@Override
		public String toString() {
			return "Request [id=" + id + ", rating=" + rating + ", status=" + status + ", feedback=" + feedback
					+ ", companyName=" + companyName + ", modelNo=" + modelNo + ", problemDesc=" + problemDesc
					+ ", productType=" + productType + "]";
		}

}
