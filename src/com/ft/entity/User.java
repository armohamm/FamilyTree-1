package com.ft.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * SysUser entity. @author MyEclipse Persistence Tools
 */
	@Entity 
	@Table(name = "userr")
	public class User implements java.io.Serializable {
		
		@Id
		@Column(name="id", unique=true, nullable=false)
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Integer id;
		@Column(length=20)
		private String username;
		@Column(length=20)
		private String password;
		@Column(length=20)
		private String firstname;
		@Column(length=20)
		private String lastname;
		@Column(length=30)
		private String birthday;
		@Column(length=11)
		private String telephone;
		@Column(length=20)
		private String nativeplace;
		@Column(length=20)
		private String location;
		@Column(length=4)
		private boolean register;
		@Column(length=4)
		private boolean live;
		@Column
		private Integer familyId;
		@Column
		private Integer fatherId;
		@Column
		private Integer motherId;
		@Column
		private String img_url;
		@Column
		private boolean sex;
		@Column
		private String email;
		@Column
		private String desease;		
		
		
		public boolean isSex() {
			return sex;
		}
		public void setSex(boolean sex) {
			this.sex = sex;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getDesease() {
			return desease;
		}
		public void setDesease(String desease) {
			this.desease = desease;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getBirthday() {
			return birthday;
		}
		public void setBirthday(String birthday) {
			this.birthday = birthday;
		}
		public String getTelephone() {
			return telephone;
		}
		public void setTelephone(String telephone) {
			this.telephone = telephone;
		}
		public String getNativeplace() {
			return nativeplace;
		}
		public void setNativeplace(String nativeplace) {
			this.nativeplace = nativeplace;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public boolean isRegister() {
			return register;
		}
		public void setRegister(boolean register) {
			this.register = register;
		}
		public boolean isLive() {
			return live;
		}
		public void setLive(boolean live) {
			this.live = live;
		}
		public Integer getFamilyId() {
			return familyId;
		}
		public void setFamilyId(Integer familyId) {
			this.familyId = familyId;
		}
		public Integer getFatherId() {
			return fatherId;
		}
		public void setFatherId(Integer fatherId) {
			this.fatherId = fatherId;
		}
		public Integer getMotherId() {
			return motherId;
		}
		public void setMotherId(Integer motherId) {
			this.motherId = motherId;
		}
		public String getImg_url() {
			return img_url;
		}
		public void setImg_url(String img_url) {
			this.img_url = img_url;
		}
		
}