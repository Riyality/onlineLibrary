package com.rt.StudentController;

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
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.LibraryService.LibraryService;
import com.rt.StudentEntity.StudentEntity;

@Controller
public class StudentController {
	@Autowired
	LibraryService libraryService;

	@RequestMapping("/addStudent")
	public String studentAdd() {

		return "add-student";
	}

	@RequestMapping("/add_student")
	public String Student_Add(@ModelAttribute StudentEntity student, Model m) {

		boolean isAdded = libraryService.AddStudent(student);
		if (isAdded) {
			m.addAttribute("successMsg", "student Added Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to Add...");
		}

		return "add-student";
	}

	@RequestMapping("/editStudent")
	public String editStudent() {
		return "edit-student";
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
	
		
		@GetMapping("/edit_student/{studentId}")
		@ResponseBody
		public ResponseEntity<StudentEntity> getStudentById(@PathVariable int studentId) {
		    StudentEntity student = libraryService.getStudentById(studentId);
		    if (student != null) {
		        return new ResponseEntity<>(student, HttpStatus.OK);
		    } else {
		        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		    }
		}
	
	    @GetMapping("/studentList")
	    public String studentList(Model model) {
	        List<StudentEntity> studentList = libraryService.AllStudents();
	        model.addAttribute("studentList", studentList);
	        return "students"; // Assuming "students" is the view name
	    }

	  
}
