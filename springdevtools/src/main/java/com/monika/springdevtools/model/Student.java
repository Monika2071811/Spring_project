package com.monika.springdevtools.model;

import java.util.Arrays;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.apache.tomcat.util.codec.binary.Base64;

import org.springframework.stereotype.Component;


@Entity
@Table (name="student")
@Component
public class Student {
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY) 
	@Column(name="id")
	
	private Integer id;
	private String studentName;
	private String studentpassword;
	private String gender;
	private String studentdob;
	private String fathername;
	private String[] subject;
	private String address;
	@Lob
	private byte[] stdPic;
	
	public Student() {
		super();
		
	}
	public Student(Integer id,String studentName,String studentpassword,String gender, String studentdob, String fathername, 
			String[] subject, String address) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.studentpassword = studentpassword;
		this.gender = gender;
		this.subject = subject;
		this.fathername = fathername;
		this.address = address;
				
	}
	public Student(Integer id,String studentName,String studentpassword,String gender, String studentdob, String fathername, 
			String[] subject, String address, byte[]stdPic ) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.studentpassword = studentpassword;
		this.gender = gender;
		this.subject = subject;
		this.fathername = fathername;
		this.address = address;
		this.stdPic = stdPic;		
	}
	
	public  Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentpassword() {
		return studentpassword;
	}
	public void setStudentpassword(String studentpassword) {
		this.studentpassword = studentpassword;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getStudentdob() {
		return studentdob;
	}
	public void setStudentdob(String studentdob) {
		this.studentdob = studentdob;
	}
	public String getFathername() {
		return fathername;
	}
	public void setFathername(String fathername) {
		this.fathername = fathername;
	}
	public String[] getSubject() {
		return subject;
	}
	public void setSubject(String[] subject) {
		this.subject = subject;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public byte[] getStdPic() {
		return stdPic;
	}
	public void setStdPic(byte[] stdPic) {
		this.stdPic = stdPic;
	}
	public String getStdPicture() {
		return Base64.encodeBase64String(stdPic);
	}
	
	@Override
	public String toString() {
		return "Student [id=" + id + ", studentName=" + studentName + ", studentpassword=" + studentpassword + ", studentdob="
				+ studentdob + ", fathername=" + fathername + ",gender=" + gender + ", subject=" + Arrays.toString(subject) + ", address="
				+ address + ", stdPic=" + Arrays.toString(stdPic) + "]";
	}
	

}
