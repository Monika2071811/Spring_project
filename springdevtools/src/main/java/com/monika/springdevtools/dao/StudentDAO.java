package com.monika.springdevtools.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import com.monika.springdevtools.model.Student;



@Service
public interface StudentDAO {
	public void addstd(Student std);
	public List<Student>getAllstd();
	public Student getstdById(int id);
	public void updatestd(Student std);
	public void deletestd(int stdId);
	public Student validatestd(Student std);
	

}
