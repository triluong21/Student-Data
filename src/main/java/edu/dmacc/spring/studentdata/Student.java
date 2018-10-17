package edu.dmacc.spring.studentdata;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="students")
public class Student {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String enrollmentid;
	private String fullname;
	private String emailaddress;
	private String city;
	private String country;
	private Gender gender;
	private boolean iastateresident;
	
	public Student() {
		super();
	}
	public Student(int id) {
		super();
		this.id = id;
	}
	public String getenrollmentid() {
		return enrollmentid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setEnrollmentid(String enrollmentid) {
		this.enrollmentid = enrollmentid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getEmailaddress() {
		return emailaddress;
	}
	public void setEmailaddress(String emailaddress) {
		this.emailaddress = emailaddress;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public boolean isIastateresident() {
		return iastateresident;
	}
	public void setIastateresident(boolean iastateresident) {
		this.iastateresident = iastateresident;
	}

	
}
