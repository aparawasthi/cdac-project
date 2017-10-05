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
@Table(name = "Product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "product_id")
	private Integer id;
	
	@NotEmpty(message="Model No. cannot be left blank")
	@Column(length = 30)
	private String modelNo;
	
	@NotEmpty(message="Product Type cannot be blank")
	@Column(length=50)
	private String productType;
	
	@ManyToOne
	@JoinColumn(name="companyName", nullable=false)
	private Agent company;

	public Product() {
		super();
		System.out.println("In product constructor");
	}

	public Product(String modelNo, String productType) {
		super();
		this.modelNo = modelNo;
		this.productType = productType;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getModelNo() {
		return modelNo;
	}

	public void setModelNo(String modelNo) {
		this.modelNo = modelNo;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public Agent getCompany() {
		return company;
	}

	public void setCompany(Agent company) {
		this.company = company;
	}
	
	
}
