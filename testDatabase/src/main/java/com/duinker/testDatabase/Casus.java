package com.duinker.testDatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Casus {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id = 0;
	private String afbeelding;
	private String locatie;
	private String merk;
	private String naam;
	private String prijs;
	private String product;
	private double lat;
	private double lng;
	private String icon;
	private String echte_prijs;
	
	
	public String getEchte_prijs() {
		return echte_prijs;
	}
	public void setEchte_prijs(String echte_prijs) {
		this.echte_prijs = echte_prijs;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAfbeelding() {
		return afbeelding;
	}
	public void setAfbeelding(String afbeelding) {
		this.afbeelding = afbeelding;
	}
	public String getLocatie() {
		return locatie;
	}
	public void setLocatie(String locatie) {
		this.locatie = locatie;
	}
	public String getMerk() {
		return merk;
	}
	public void setMerk(String merk) {
		this.merk = merk;
	}
	public String getNaam() {
		return naam;
	}
	public void setNaam(String naam) {
		this.naam = naam;
	}
	public String getPrijs() {
		return prijs;
	}
	public void setPrijs(String prijs) {
		this.prijs = prijs;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public double getLat() {
		return lat;
	}
	public void setLat(double lat) {
		this.lat = lat;
	}
	public double getLng() {
		return lng;
	}
	public void setLng(double lng) {
		this.lng = lng;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	 


}