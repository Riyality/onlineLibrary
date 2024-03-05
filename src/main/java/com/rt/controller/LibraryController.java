package com.rt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.service.BookService;
import com.rt.service.LibraryService;
import com.rt.service.TeacherService;

@Controller
public class LibraryController {
	
 @Autowired
 private BookService bookService;
 @Autowired
 private LibraryService libraryService;
 @Autowired
 private TeacherService teacherService;
 
	@RequestMapping("/")
	public String Login() {
		
		return "new_login";
	}
    @RequestMapping("/login")
	public String IndexPage(Model model) {
    	  int numberOfBooks = bookService.getNumberOfBooks();
          model.addAttribute("numberOfBooks", numberOfBooks);
          
          int numberOfStudents=libraryService.getnumberOfStudents();
          model.addAttribute("numberOfStudents",numberOfStudents);
          
          int numberOfTeachers=teacherService.getnumberOfTeachers();
          model.addAttribute("numberOfTeachers",numberOfTeachers);
          
          
		return "Authontication/index";
	}

}
