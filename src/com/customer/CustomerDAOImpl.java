package com.customer;

import java.util.List;

import org.hibernate.Session;

import com.customer.Customer;
import com.customer.HibernateUtil;


public class CustomerDAOImpl implements CustomerDAO {

	public List<Customer> getAllCustomer() {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Customer> customer = (List<Customer>) session.createQuery("from Customer").list();

		return customer;
	}
	public boolean addCustomer(Customer c) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
		return true;
	}

	
	public Customer searchCustomer(int id) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();

		Customer customer = (Customer) session.load(Customer.class, id);
		session.getTransaction().commit();
		session.close();
		return customer;
	}

	
	public boolean deleteCustomer(int id) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		

		Customer customer = (Customer) session.load(Customer.class, id);
		session.beginTransaction();
		session.delete(customer);// to delete
		session.getTransaction().commit();
		session.close();
		return true;
	}

	
	public boolean updateCustomer(int id, String fname,String lname, String gender,String companyname, String companytype, String gstnumber,String phone, String email, String password,String repassword, String address)
	{
		Session session = HibernateUtil.getSessionfactory().openSession();
		Customer customer = (Customer) session.load(Customer.class, id);

		session.beginTransaction();
		session.persist(customer);
		customer.setFname(fname);
		customer.setLname(lname);
		customer.setCompanyname(companyname);
		customer.setCompanytype(companytype);
		customer.setGstnumber(gstnumber);
		customer.setPhone(phone);
		customer.setEmail(email);
		customer.setPassword(password);
		customer.setRepassword(repassword);
		customer.setAddress(address);
		
		
		
		session.save(customer);
		session.getTransaction().commit();
		session.close();
		System.out.println("Updation complete");
		return true;
	}
	
}

