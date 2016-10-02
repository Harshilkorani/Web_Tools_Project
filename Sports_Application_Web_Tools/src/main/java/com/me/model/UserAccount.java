package com.me.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;


/*
@Entity
@Table(name="USER_ACCOUNT", uniqueConstraints=@UniqueConstraint(columnNames={"USER_NAME"}))
public class UserAccount {
	
	


	
	
	@OneToOne(fetch=FetchType.EAGER, mappedBy="userAccount", cascade=CascadeType.ALL)
	private User user;

	public int getUserAccountId() {
		return userAccountId;
	}

	public void setUserAccountId(int userAccountId) {
		this.userAccountId = userAccountId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	
	
	

}
*/