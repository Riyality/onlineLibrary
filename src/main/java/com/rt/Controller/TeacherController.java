package com.rt.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.Service.TeacherService;
import com.rt.entity.Teacher;

@Controller
public class TeacherController {
	@Autowired
	TeacherService teacherService;
	
	@RequestMapping(value = "/addTeacher")
	public String TeacherForm(){
		return "add-teacher";
	}
	@RequestMapping("/add_teacher") 
		public String Teacher(@ModelAttribute Teacher teacher, Model model ){
			boolean  isAdded =teacherService.saveTeacher(teacher);
			
			if(isAdded){
				model.addAttribute("successMsg","Teacher isAdded successfully");
			}
			else
			{
				model.addAttribute("errorMsg","Teacher is failed to add ");
			}
			return "add-teacher";

		}
	
	@GetMapping("/teacherList")
    public String teacherList(Model model) {
        List<Teacher> teacherList = teacherService.AllTeachers();
        model.addAttribute("teacherList", teacherList);
        return "teachers"; // Assuming "students" is the view name
    }


					
	}


