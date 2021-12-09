package com.monika.springdevtools.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.Query;
import com.monika.springdevtools.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {
	@Query("select s from Student s where s.studentName=(:studentName) and s.studentpassword=(:studentpassword)")
	Student findByLoginData(String studentName, String studentpassword);
}