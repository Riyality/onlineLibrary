package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rt.entity.Teacher;
import com.rt.service.TeacherService;

@Controller
@RequestMapping("/teachers")
public class TeacherController {
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping(value = "/add-form")
	public String addForm(){
		return "add-teacher";
	}
	@RequestMapping(method = RequestMethod.POST) 
		public String Teacher(@ModelAttribute Teacher teacher, Model model ){
			boolean  isAdded =teacherService.add(teacher);
			
			if(isAdded){
				model.addAttribute("successMsg","Teacher isAdded successfully");
			}
			else
			{
				model.addAttribute("errorMsg","Teacher is failed to add ");
			}
			return "add-teacher";

		}
	
	@GetMapping
    public String teacherList(Model model) {
        List<Teacher> teacherList = teacherService.all();
        model.addAttribute("teacherList", teacherList);
        return "teachers"; // Assuming "students" is the view name
    }


					
	}


