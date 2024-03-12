package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.rt.entity.TeacherEntity;
import com.rt.service.TeacherService;

@Controller
@RequestMapping("/teachers")
public class TeacherController {
	@Autowired
	 private TeacherService teacherService;
	
	@RequestMapping("/add-form")
	public String addForm(){
		return "teachers/add";
	}
	@PostMapping("/add")
		public String Teacher(@ModelAttribute TeacherEntity teacher, Model model ){
			boolean  isAdded =teacherService.add(teacher);
			
			if(isAdded){
				model.addAttribute("successMsg","Teacher isAdded successfully");
			}
			else
			{
				model.addAttribute("errorMsg","Teacher is failed to add ");
			}
			return "redirect:/teachers/list";

		}
	@RequestMapping("/update")
  	public String TeacherUpdate(){
  		return "teachers/update";
	}
  		
  		 @PostMapping("/updateTeacher")
 	  	public String update(@ModelAttribute  TeacherEntity teacher, Model model){
 	  		
 	  		boolean isAdded = teacherService.update(teacher);
 	  		
 	  		model.addAttribute("teacherList", teacher);
 	  		
 	  		if (isAdded) {
 	  					
 	  			model.addAttribute("msgsucc","SuccessFully updated....");
 	  		} else {
 	  			model.addAttribute("err","Not updated....");
 	  		}
 	  		
 	  		return "redirect:/teachers/list";
			
 	}	
  	
  		@RequestMapping("/delete")
		public String deletedata(@RequestParam int teacherId, Model model) {
		    
		    boolean empdelete = teacherService.delete(teacherId);

		    if (empdelete) {
		        model.addAttribute("successMsg", "	Teacher deleted successfully...");
		    } else {
		        model.addAttribute("errMsg", "Unable to delete the Teacher...");
		    }

			return "redirect:/teachers/list";

		}

  		 
	@GetMapping("/list")
    public String teacherList(Model model) {
        List<TeacherEntity> teacherList = teacherService.all();
        model.addAttribute("teacherList", teacherList);
        return "teachers/list"; // Assuming "students" is the view name
    }


					
	}


