package com.product;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MapKeyColumn;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product{
	
	@Id	
	@Column(name="Product_Id" ,length=30)
	private int id;
		
	@Column(name = "Product_Name",length=50)
	private String name;

	@Column(name = "Product_Category",length=30)
	private String category;
	
	@Column(name = "Product_Price",length=25)
	private int price;
	
	@Column(name = "Product_Type",length=50)
	private String type;
	
	@Column(name = "Product_image",length=500)
	private String image;
	
	public Product() {}

	public Product(int id, String name, String category, int price, String type, String image) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.price = price;
		this.type = type;
		this.image = image;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", category=" + category + ", price=" + price + ", type=" + type
				+ ", image=" + image + "]";
	}
	
	
	
	
}