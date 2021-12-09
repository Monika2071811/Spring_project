package com.monika.springdevtools.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.monika.springdevtools.model.Student;
import com.monika.springdevtools.repository.StudentRepository;



@Service
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	StudentRepository StudentRepository;
	
	@Override
	public void addstd(Student std) {
		StudentRepository.save(std);
	}

	@Override
	public List<Student> getAllstd() {
		List<Student> stdList=StudentRepository.findAll();
		return stdList;
	}

	@Override
	public Student getstdById(int id) {
		Student std=StudentRepository.getById(id);
		return std;
	}

	@Override
	public void updatestd(Student std) {
		StudentRepository.save(std);
		
	}

	@Override
	public void deletestd(int stdId) {
		StudentRepository.deleteById(stdId);
		
	}

	@Override
	public Student validatestd(Student std) {
		Student std1=StudentRepository.findByLoginData(std.getStudentName(),std.getStudentpassword());
		return std1;
	}

	}
