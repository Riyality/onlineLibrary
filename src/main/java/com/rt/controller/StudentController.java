package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.StudentEntity.StudentEntity;
import com.rt.service.LibraryService;

@Controller
@RequestMapping("/students")
public class StudentController {
	@Autowired
	LibraryService libraryService;

	@RequestMapping("/add-form")
	public String studentAdd() {

		return "students/add";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String add(@ModelAttribute StudentEntity student, Model m) {

		boolean isAdded = libraryService.addStudent(student);
		if (isAdded) {
			m.addAttribute("successMsg", "student Added Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to Add...");
		}

		return "students/list";
	}

	@RequestMapping("/edit-form")
	public String editStudent() {
		return "students/update";
	}

	/*@RequestMapping("/edit_student")
	public String Student_edit(@ModelAttribute StudentEntity student, Model m) {
		boolean isUpdated = libraryService.UpdateStudent(student);
		if (isUpdated) {
			m.addAttribute("successMsg", "User updated Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to Update...");
		}
		return "students";
	}*/

/*
	@RequestMapping("/edit_student/{StudentId}")
	public String getStudentById(@PathVariable int StudentId, Model m){
		StudentEntity StudentList=libraryService.getStudentById(StudentId);
		m.addAttribute("StudentData",StudentList);
		return "edit-student";
	}
	
*/	
	/*  @GetMapping("/edit_student/{studentId}")
	    @ResponseBody
	    public StudentEntity getStudentById(@PathVariable int studentId) {
	        StudentEntity student = libraryService.getStudentById(studentId);
	        return student;
	    }
	    
*/
	
		
		@GetMapping("/id/{studentId}")
		@ResponseBody
		public ResponseEntity<StudentEntity> getStudentById(@PathVariable int studentId) {
		    StudentEntity student = libraryService.getStudentById(studentId);
		    if (student != null) {
		        return new ResponseEntity<>(student, HttpStatus.OK);
		    } else {
		        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		    }
		}
	
	    @GetMapping
	    public String studentList(Model model) {
	        List<StudentEntity> studentList = libraryService.all();
	        model.addAttribute("studentList", studentList);
	        return "students/list"; // Assuming "students" is the view name
	    }

	  
}
