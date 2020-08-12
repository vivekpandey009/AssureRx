package com.mail;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Properties;

import javax.mail.*;
import javax.mail.internet.*;

public class CustomerMail extends HttpServlet 
	{
	  private static final long serialVersionUID=1L;
	  
	  public CustomerMail()
	  {
		  super();
	  }
	  
	  public static void sendNewAccountGreetMail(String name, String email) {
			// authentication info
			final String username = "assurepharmacy@gmail.com";
			final String password = "q1w1e1r1t1y1";
			String fromEmail = "";
			String toEmail = email;

			Properties properties = new Properties();
			properties.put("mail.smtp.auth", "true");
			properties.put("mail.smtp.starttls.enable", "true");
			// this "smtp.gmail.com" should be change according to mail system
			properties.put("mail.smtp.host", "smtp.gmail.com");
			properties.put("mail.smtp.port", "587");

			Session session = Session.getInstance(properties, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(username, password);
				}
			});
			// Start our mail message
			MimeMessage msg = new MimeMessage(session);
			try {
				msg.setFrom(new InternetAddress(fromEmail));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
				msg.setSubject("Account created");

				Multipart emailContent = new MimeMultipart();

				// Text body part
				MimeBodyPart text = new MimeBodyPart();
				text.setText("<html><head></head><body><tbody><tr><td align='center'></td>"
						+ "</tr><tr><td><table align='center' cellpadding='0' cellspacing='0'>"
						+ "<tbody><tr><td align='center'><table border='0' cellspacing='0' cellpadding='0'>"
						+ "<tbody><tr><td align='center' style='padding-left:60px'><img src='https://scontent.fdel24-1.fna.fbcdn.net/v/t1.0-9/116809852_301019137788925_5924721173777389708_n.jpg?_nc_cat=109&_nc_sid=730e14&_nc_ohc=njkZXkLNnHUAX_pi8_H&_nc_ht=scontent.fdel24-1.fna&oh=1283d38c0296553468264b9b6cca64f5&oe=5F588253' alt='Assure Rx' title='Assure Rx' height='50' width='100' class='CToWUd'>"
						+ "</td><td align='right' valign='top'></td></tbody></table></td></tr><tr><td align='center'></td></tr><tr>"
						+ "<td align='left' style='padding-left:20px;font-family:\"Open Sans\",sans-serif,arial;font-size:20px;font-weight:600;line-height:26.5px;color:#222'><br>Welcome "
						+ name
						+ "</td></tr><tr><td style='height:10px'></td></tr><tr><td><table width='100%' border='0' cellpadding='0' cellspacing='0'>"
						+ "<tbody><tr><td style='height:25px'></td></tr><tr>"
						+ "<td align='left' style='padding-left:20px;font-family:\"Open Sans\",sans-serif,arial;font-size:15px;font-weight:600;line-height:23px;color:#222'>"
						+ " Welcome to Assure Rx, we are glad to welcome you as our own in the Assure Rx family. Our family is increasing with the support of customers like you."
						+ " We are thankful to you for choosing Assure Rx, and we will do everything to provide you with our best medicines."
						+ "We will take our best initiative to serve you. Stay safe and Keep shopping"
						+ "<br><br>Thank You!</td></tr></tbody></table></td></tr></body></html>", "US-ASCII", "html");
				emailContent.addBodyPart(text);

				// Attach body parts
				msg.setContent(emailContent);

				Transport.send(msg);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	  }
	}