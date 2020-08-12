package com.customer;

import java.util.List;

import com.customer.Customer;

public interface CustomerDAO {
	List<Customer> getAllCustomer();

	boolean addCustomer(Customer c);
	
	Customer searchCustomer(int id);
	
	boolean deleteCustomer(int id);
	
	boolean updateCustomer(int id, String fname,String lname, String gender,String companyname, String companytype, String gstnumber,String phone, String email, String password,String repassword, String address);

}
