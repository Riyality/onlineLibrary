package com.rt.LibraryService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.LibraryDao.LibraryDao;
import com.rt.StudentEntity.StudentEntity;

@Service
public class LibraryService {
 @Autowired
 LibraryDao librarydao;
 
	public boolean AddStudent(StudentEntity student) {
      return librarydao.addStudent(student);
	}

	public List<StudentEntity> AllStudents() {
		return librarydao.AllStudents();
	}

	public boolean UpdateStudent(StudentEntity update) {
		return librarydao.StudentUpdate(update);
	}

	public StudentEntity getStudentById(int StudentId) {
		return librarydao.getStudentById(StudentId);
	}

	


}
