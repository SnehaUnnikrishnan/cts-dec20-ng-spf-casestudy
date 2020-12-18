package com.contact.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.Range;




@Entity
@Table(name="contactdetails")
public class Contact {
		
	@Id
	@Column(name="contact_id")
	@NotNull(message="Contact id cannot be null")
	@Range(min=100000,max=999999)
	private int contact_id;
	
	@Column(name="name")
	@NotBlank(message="Name cannot be null")
	private String name;
	

	
	@Column(name="contact_no")
	@NotBlank(message="Contact cannot be null")
	private String contact_no;
	

	
	@Column(name="date_of_birth")
	private Date date_of_birth;
		
		public Contact() {}
		
		public Contact(int contact_id, String name,  String contact_no,
				Date date_of_birth) {
			
			this.contact_id = contact_id;
			this.name = name;
			this.contact_no = contact_no;
			this.date_of_birth = date_of_birth;
		}

		public int getContact_id() {
			return contact_id;
		}

		public void setContact_id(int contact_id) {
			this.contact_id = contact_id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}


		public String getContact_no() {
			return contact_no;
		}

		public void setContact_no(String contact_no) {
			this.contact_no = contact_no;
		}

		

		public Date getDate_of_birth() {
			return date_of_birth;
		}

		public void setDate_of_birth(Date date_of_birth) {
			this.date_of_birth = date_of_birth;
		}

		@Override
		public String toString() {
			return "ContactDetails [contact_id=" + contact_id + ", name=" + name + ", contact_no=" + contact_no + ",  date_of_birth=" + date_of_birth + "]";
		}

		
		
		
		
}
	 

