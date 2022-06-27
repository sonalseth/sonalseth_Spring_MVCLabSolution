package com.greatlearning.debateevent.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.debateevent.entity.Student;
import com.greatlearning.debateevent.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;

	@GetMapping("/")
	public String getStudents(Map<String, List<Student>> map) {
		map.put("student", service.findAll());
		return "index";
	}

	public StudentController() {
		super();
		System.out.println("Student Controller Loaded");
	}

	@GetMapping("/delete")
	public String deleteStudents(@RequestParam int studentId) {
		this.service.deleteById(studentId);
		return "redirect:/";

	}

	@GetMapping("/showFormForAdd")
	public String addStudent(Map<String, Student> map) {
		map.put("Student", new Student());
		return "registrationForm";
	}

	@GetMapping("/showFormForUpdate")
	public String updateStudent(@RequestParam int studentId, Map<String, Student> map) {
		System.out.println("update" + studentId);
		Student student = this.service.findById(studentId);
		map.put("Student", student);
		return "registrationForm";
	}

	@PostMapping("/save")
	public String save(Student student) {
		this.service.save(student);
		return "redirect:/";

	}

}
