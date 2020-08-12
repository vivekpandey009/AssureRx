package com.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Session;

import com.customer.Customer;
import com.customer.HibernateUtil;

public class ProductDAOImpl implements ProductDAO {

	public List<Product> getProduct() {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> product = (List<Product>) session.createQuery("FROM Product").list();

		return product;
	}
	public boolean addProduct(Product c) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		session.save(c);
		session.getTransaction().commit();
		session.close();
		return true;
	}

	
	public Product searchProduct(int id) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();

		Product product = (Product) session.load(Product.class, id);
		session.getTransaction().commit();
		session.close();
		return product;
	}

	
	public boolean deleteProduct(int id) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		

		Product product = (Product) session.load(Product.class, id);
		session.beginTransaction();
		session.delete(product);// to delete
		session.getTransaction().commit();
		session.close();
		return true;
	}
	
	public List<Product> getPriceByName(String name){
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Product> product = (List<Product>) session.createQuery("FROM Product where name='"+name+"'").list();

		return product;
		
	}
	public List<Product> searchProductByName(String name) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();

		List<Product> product = (List<Product>) session.createQuery("FROM Product where name like '%"+name+"%'").list();
	//	session.getTransaction().commit();
	//	session.close();
		return product;
	}
	
	public List<Product> searchProductByCategory(String category) {
		Session session = HibernateUtil.getSessionfactory().openSession();
		session.beginTransaction();

		List<Product> product = (List<Product>) session.createQuery("FROM Product where category like '%"+category+"%'").list();
	//	session.getTransaction().commit();
	//	session.close();
		return product;
	}

}
