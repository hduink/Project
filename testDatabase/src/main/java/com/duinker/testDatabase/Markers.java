package com.duinker.testDatabase;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Markers {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int idmarkers = 0;
		private String winkelnaam;
		private String product;
		private String merk;
		private String prijs;
		private float lat;
		private float lng;
				
		public Markers(){}
		public Markers(int idmarkers, String winkelnaam, String product, String merk, String prijs, float lat, float lng){
				this.idmarkers = idmarkers;
				this.winkelnaam = winkelnaam;
				this.product = product;
				this.merk = merk;
				this.prijs = prijs;
				this.lat = lat;
				this.lng =lng;
		}
		
		public int getIdmarkers(){
			return idmarkers;
		}
		public void setIdmarkers(int idmarkers){
			this.idmarkers = idmarkers;
		}
		public String getWinkelnaam(){
			return winkelnaam;
		}
		public void setWinkelnaam(String winkelnaam){
			this.winkelnaam = winkelnaam;
		}
		public String getProduct(){
			return product;
		}
		public void setProduct(String product){
			this.product = product;
		}
		public String getMerk(){
			return merk;
		}
		public void setMerk(String merk){
			this.merk = merk;
		}
		public String getPrijs() {
			return prijs;
		}
		public void setPrijs(String prijs) {
			this.prijs = prijs;
		}
		public float getLat() {
			return lat;
		}
		public void setLat(float lat) {
			this.lat = lat;
		}
		public float getLng() {
			return lng;
		}
		public void setLng(float lng) {
			this.lng = lng;
		}
}
