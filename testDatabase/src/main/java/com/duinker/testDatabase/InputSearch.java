package com.duinker.testDatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class InputSearch {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int inputId = 0;
	private String location;
	private String product;
	private String brand;
	private String price;
	
	public InputSearch(){}
	public InputSearch(int inputId, String location, String product, String brand, String price){
			this.inputId = inputId;
			this.location = location;
			this.product = product;
			this.brand = brand;
			this.price = price;
	}
	
	public int getInputId(){
		return inputId;
	}
	public void setInputId(int inputId){
		this.inputId = inputId;
	}
	public String getLocation(){
		return location;
	}
	public void setLocation(String location){
		this.location = location;
	}
	public String getProduct(){
		return product;
	}
	public void setProduct(String product){
		this.product = product;
	}
	public String getBrand(){
		return brand;
	}
	public void setBrand(String brand){
		this.brand = brand;
	}
	public String getPrice(){
		return price;
	}
	public void setPrice(String price){
		this.price = price;
	}
}
