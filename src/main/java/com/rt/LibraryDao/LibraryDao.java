package com.rt.LibraryDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.RowMapper.StudentRowMapper;
import com.rt.StudentEntity.StudentEntity;

@Repository

public class LibraryDao {
	@Autowired
	JdbcTemplate template;

	public boolean addStudent(StudentEntity student) {
		try {
			Object args[] = { student.getStudentId(), student.getFirstName(), student.getLastName(), student.getEmail(),student.getClassName(),student.getDepartment(),
					student.getContactNumber()};
			int data = template.update(
					"insert into student(`StudentId`,`FirstName`,`LastName`,`Email`,`className`,`department`,`ContactNumber`) values(?,?,?,?,?,?,?)",
					args);
			if (data == 1) {
				return true;
			} else {
				return false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<StudentEntity> AllStudents() {
		List<StudentEntity> list = null;
		try {
			Object[] args = {};
			list = template.query("select * from student", args, new StudentRowMapper());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean StudentUpdate(StudentEntity update) {

		return false;
	}

	public StudentEntity getStudentById(int StudentId) {
		StudentEntity studentdata = null;
		try {
			Object[] args = { StudentId };
			studentdata = template.queryForObject("select * from student where StudentId=? ", args, new StudentRowMapper());

		} catch (DataAccessException e) {
			// Handle the case where no student was found
			System.out.println("No Student found with StudentID: " + StudentId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(studentdata);
		return studentdata;
	}

	
	}


