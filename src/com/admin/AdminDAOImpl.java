package com.admin;

import java.util.List;

import org.hibernate.Session;

import com.customer.Customer;
import com.customer.HibernateUtil;

public class AdminDAOImpl {
	
	
	public List<Admin> getAllAdmin() {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Admin> admin = (List<Admin>) session.createQuery("from Admin").list();

		return admin;
	}
}
