package com.rt.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.service.BookService;
import com.rt.service.LibraryService;
import com.rt.service.TeacherService;
import com.rt.service.issueBookService;

@Controller
public class LibraryController {
	
 @Autowired
 private BookService bookService;
 @Autowired
 private LibraryService libraryService;
 @Autowired
 private TeacherService teacherService;
 @Autowired 
 issueBookService issueBookService;
 
	@RequestMapping("/")
	public String Login() {
		
		return "other/new_login";
	}
    @RequestMapping("/login")
	public String IndexPage(Model model) {
        Map<String, Integer> quantities = bookService.calculateQuantities();
        
        // Add all data to the model
        model.addAttribute("numberOfBooks", quantities.get("TotalQuantity"));
        model.addAttribute("availableBooks", quantities.get("AvailableQuantity"));
       
          
          int numberOfStudents=libraryService.getnumberOfStudents();
          model.addAttribute("numberOfStudents",numberOfStudents);
          
          int numberOfTeachers=teacherService.getnumberOfTeachers();
          model.addAttribute("numberOfTeachers",numberOfTeachers);
          
          
		return "Authontication/index";
	}

}
