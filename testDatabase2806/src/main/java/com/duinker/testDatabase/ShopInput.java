package com.duinker.testDatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ShopInput {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int inputId = 0;
	private String winkelnaam;
	private String locatie;
	private String product;
	private String merk;
	private String afbeelding;
	private String prijs;
	 
	public ShopInput(){} 
	public ShopInput(int inputId, String winkelnaam, String locatie, String product, String merk, String afbeelding,
			String prijs) {
		this.inputId = inputId;
		this.winkelnaam = winkelnaam;
		this.locatie = locatie;
		this.product = product;
		this.merk = merk;
		this.afbeelding = afbeelding;
		this.prijs = prijs;
	}

	public int getInputId() {
		return inputId;
	}

	public void setInputId(int inputId) {
		this.inputId = inputId;
	}

	public String getWinkelnaam() {
		return winkelnaam;
	}

	public void setWinkelnaam(String winkelnaam) {
		this.winkelnaam = winkelnaam;
	}

	public String getLocatie() {
		return locatie;
	}

	public void setLocatie(String locatie) {
		this.locatie = locatie;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getMerk() {
		return merk;
	}

	public void setMerk(String merk) {
		this.merk = merk;
	}

	public String getAfbeelding() {
		return afbeelding;
	}

	public void setAfbeelding(String afbeelding) {
		this.afbeelding = afbeelding;
	}

	public String getPrijs() {
		return prijs;
	}

	public void setPrijs(String prijs) {
		this.prijs = prijs;
	}

}