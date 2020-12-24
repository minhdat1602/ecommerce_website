package com.fashi.model;

import java.sql.Date;
import java.sql.Timestamp;

public class User extends AbstractModel{
	private String fullname;
	private String username;
	private String password;
	private String email;
	private String phone;
	private String gender;
	private Date birth;
	private String address;
	private Integer status;
	private Integer groupId;
	private Timestamp dateRegister;
	
	public User() {
		super();
	}
	
	public User(String fullname, String username, String password, String email, String phone, String gender, String address) {
		super();
		this.fullname = fullname;
		this.username = username;
		this.password = password;
		this.email = email;
		this.phone = phone;
		this.gender = gender;
		this.address = address;

	}

	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getGroupId() {
		return groupId;
	}
	public void setGroupId(Integer groupId) {
		this.groupId = groupId;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Timestamp getDateRegister() {
		return dateRegister;
	}

	public void setDateRegister(Timestamp dateRegister) {
		this.dateRegister = dateRegister;
	}
	
	
}
