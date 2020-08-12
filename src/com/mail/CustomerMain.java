package com.mail;
import com.customer.*;

public class CustomerMain {

	public static void main(String[] args) {
		Customer c=new Customer();
	
	    CustomerMail.sendNewAccountGreetMail(c.getFname(), c.getEmail());

	}

}
