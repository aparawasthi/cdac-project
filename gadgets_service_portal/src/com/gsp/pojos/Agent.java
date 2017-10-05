package com.gsp.pojos;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "agent")
public class Agent {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="agent_id")
		private Integer id;
		
		@NotEmpty(message="Name field cannot be blank")
		@Column(length=30, nullable=false)
		private String name;
		
		@NotEmpty(message="Company Name field cannot be blank")
		@Column(length=40, nullable=false,unique=true)
		private String companyName;
		
		@NotEmpty(message="Email field cannot be blank")
		@Column(length=30, unique=true)
		@Email(message="Invaid Email")
		private String email;
		
		@NotEmpty(message="Password field cannot be blank")
		@Column(length=20)
		private String password;
		
		@OneToMany(mappedBy="company",cascade=CascadeType.ALL)
		private List<Product> product;
		
		public Agent() {
			super();
			this.product = new ArrayList<>();
			System.out.println("In Agent Constructor");
		}
		
		public Agent(String name, String companyName, String email, String password) {
			super();
			this.name = name;
			this.companyName = companyName;
			this.email = email;
			this.password = password;
		}
		
		public Agent(String email, String password) {
			super();
			this.email = email;
			this.password = password;
		}

		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		
		public String getCompanyName() {
			return companyName;
		}
		public void setCompanyName(String companyName) {
			this.companyName = companyName;
		}
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}

		public List<Product> getProduct() {
			return product;
		}

		public void setProduct(List<Product> product) {
			this.product = product;
		}

		@Override
		public String toString() {
			// TODO Auto-generated method stub
			return "Agent [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", company name="
			+ companyName + "]";
		}

		

}
