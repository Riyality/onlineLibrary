package com.rt.entity;

import javax.persistence.Entity;

@Entity
public class Teacher {
	private int TeacherId;
	private String FirstName;
	private String LastName;
	private String Email;
	private String ContactNumber;
	private String faculty;
	
	
	public Teacher(){}



public Teacher(int teacherId, String firstName, String lastName, String email, String contactNumber,String faculty) {
	super();
	this.TeacherId = teacherId;
	this.FirstName = firstName;
	this.LastName = lastName;
	this.Email = email;
	this.ContactNumber = contactNumber;
	this.faculty = faculty;
	

		
	}



public int getTeacherId() {
	
	return TeacherId;
}
public void setTeacherId(int teacherId) {
	
	this.TeacherId = teacherId;
}
public String getFirstName() {
	
	return FirstName;
}


public void setFirstName(String firstName) {
	this.FirstName = firstName;
}

public String getLastName() {
	return LastName;
}


public void setLastName(String lastName) {
	this.LastName = lastName;
}




public String getEmail() {
	return Email;
}

public void setEmail(String email) {
	this.Email = email;
}

public String getContactNumber() {
	return ContactNumber;
}

public void setContactNumber(String contactNumber) {
	this.ContactNumber = contactNumber;
}



public String getFaculty() {
	return faculty;
}



public void setFaculty(String faculty) {
	this.faculty = faculty;
}










}