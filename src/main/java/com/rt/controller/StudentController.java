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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.StudentEntity.StudentEntity;
import com.rt.entity.BookEntity;
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
	
	@PostMapping("/add")
	public String add(@ModelAttribute StudentEntity student, Model m) {

		boolean isAdded = libraryService.addStudent(student);
		if (isAdded) {
			m.addAttribute("successMsg", "student Added Successfully...");
		} else {
			m.addAttribute("errMsg", "Unable to Add...");
		}

		return "redirect:/students/list";
	}

	@RequestMapping("/update")
	public String editStudent() {
		return "students/update";
	}
	@PostMapping("/updateStudent")
	public String updateBook(@ModelAttribute StudentEntity student, Model model) {
	    boolean isUpdated = libraryService.update(student);
	    if (isUpdated) {
	        model.addAttribute("successMsg", "Successfully updated.");
	    } else {
	        model.addAttribute("errMsg", "Not updated.");
	    }
	    return "redirect:/students/list";
	}
       
	@RequestMapping("/delete")
	public String deleteStudent(@RequestParam int studentId, Model model) {

		boolean empdelete = libraryService.delete(studentId);

		if (empdelete) {
			model.addAttribute("successMsg", "student deleted successfully...");
		} else {
			model.addAttribute("errMsg", "Unable to delete student...");
		}

		return "redirect:/students/list";
	}
		
		/*@GetMapping("/id/{studentId}")
		@ResponseBody
		public ResponseEntity<StudentEntity> getStudentById(@PathVariable int studentId) {
		    StudentEntity student = libraryService.getStudentById(studentId);
		    if (student != null) {
		        return new ResponseEntity<>(student, HttpStatus.OK);
		    } else {
		        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
		    }
		}*/
	
	    @GetMapping("/list")
	    public String studentList(Model model) {
	        List<StudentEntity> studentList = libraryService.all();
	        model.addAttribute("studentList", studentList);
	        return "students/list"; // Assuming "students" is the view name
	    }

	  
}
