package com.rt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rt.entity.Teacher;
import com.rt.Dao.TeacherDao;

@Service
public class TeacherService {
@Autowired
	TeacherDao	teacherDao;
	public boolean saveTeacher(Teacher teacher) {
		
		return teacherDao.saveTeacher(teacher);
	}
	
	public List<Teacher> AllTeachers() {
		return teacherDao.AllTeachers();
	}




}
