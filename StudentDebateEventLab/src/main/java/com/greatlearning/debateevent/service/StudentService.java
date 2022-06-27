package com.greatlearning.debateevent.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.greatlearning.debateevent.entity.Student;

@Service
public interface StudentService {
	public List<Student> findAll();

	public Student findById(long studentId);

	public void save(Student student);

	public void deleteById(long studentId);

}
