package com.customer;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id",length=25)
	private int id;

	@Column(name = "firstname",length=25)
	private String fname;
	
	@Column(name = "lastname",length=25)
	private String lname;

	@Column(name = "gender",length=15)
	private String gender;
	
	@Column(name = "companyname",length=40)
	private String companyname;
	
	@Column(name = "companytype",length=25)
	private String companytype;
	
	@Column(name = "gstnumber",length=25)
	private String gstnumber;
	
	@Column(name = "phone",length=10)
	private String phone;
	
	@Column(name = "email",length=50)
	private String email;
	
	@Column(name = "password",length=25)
	private String password;

	@Column(name = "repassword",length=25)
	private String repassword;
	
	@Column(name = "address",length=100)
	private String address;
	
	

	
	public Customer()
	{
		
	}




	public Customer(int id, String fname, String lname, String gender, String companyname, String companytype,
			String gstnumber, String phone, String email, String password, String repassword, String address) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.gender = gender;
		this.companyname = companyname;
		this.companytype = companytype;
		this.gstnumber = gstnumber;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.repassword = repassword;
		this.address = address;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getFname() {
		return fname;
	}




	public void setFname(String fname) {
		this.fname = fname;
	}




	public String getLname() {
		return lname;
	}




	public void setLname(String lname) {
		this.lname = lname;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
	}




	public String getCompanyname() {
		return companyname;
	}




	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}




	public String getCompanytype() {
		return companytype;
	}




	public void setCompanytype(String companytype) {
		this.companytype = companytype;
	}




	public String getGstnumber() {
		return gstnumber;
	}




	public void setGstnumber(String gstnumber) {
		this.gstnumber = gstnumber;
	}




	public String getPhone() {
		return phone;
	}




	public void setPhone(String phone) {
		this.phone = phone;
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




	public String getRepassword() {
		return repassword;
	}




	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}




	public String getAddress() {
		return address;
	}




	public void setAddress(String address) {
		this.address = address;
	}




	@Override
	public String toString() {
		return "Customer [id=" + id + ", fname=" + fname + ", lname=" + lname + ", gender=" + gender + ", companyname="
				+ companyname + ", companytype=" + companytype + ", gstnumber=" + gstnumber + ", phone=" + phone
				+ ", email=" + email + ", password=" + password + ", repassword=" + repassword + ", address=" + address
				+ "]";
	}
	

}