package com.gsp.pojos;

import java.util.HashSet;
import java.util.Set;

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
@Table(name = "user")
public class User {
		
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="user_id")
		private Integer id;
		
		@NotEmpty(message="Name field cannot be blank")
		@Column(length=30)
		private String name;
		
		@NotEmpty(message="Password field cannot be blank")
		@Column(length=20)
		private String password;
		
		@NotEmpty(message="Email field cannot be blank")
		@Column(length=30, unique=true)
		@Email(message="Invaid Email")
		private String email;
		
		@NotEmpty(message="Contact Number cannot be blank")
		@Column(length=10)
		private String contactNo;
		
		@NotEmpty(message="Address cannot br blank")
		@Column(length=100)
		private String address;
		
		@OneToMany(mappedBy="user",cascade=CascadeType.ALL)
		private Set<Request> requests;

		public User() {
			super();
			this.requests=new HashSet<Request>();
			System.out.println("In User constructor");
		}
		
		public User(String name, String password, String email, String contactNo, String address) {
			super();
			this.name = name;
			this.password = password;
			this.email = email;
			this.contactNo = contactNo;
			this.address = address;
		}
		
		public User(String name, String email, String contactNo, String address) {
			super();
			this.name = name;
			this.email = email;
			this.contactNo = contactNo;
			this.address = address;
		}

		public User(String password, String email) {
			super();
			this.password = password;
			this.email = email;
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

		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getContactNo() {
			return contactNo;
		}
		public void setContactNo(String contactNo) {
			this.contactNo = contactNo;
		}
		
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		
		public Set<Request> getRequests() {
			return requests;
		}

		public void setRequests(Set<Request> requests) {
			this.requests = requests;
		}

		@Override
		public String toString() {
			return "User [id=" + id + ", name=" + name + ", password=" + password + ", email=" + email + ", contactNo="
					+ contactNo + ", address=" + address + "]";
		}
}
