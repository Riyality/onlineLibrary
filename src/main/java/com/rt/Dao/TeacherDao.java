package com.rt.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.RowMapper.TeacherRowMapper;
import com.rt.entity.Teacher;
@Repository
public class TeacherDao {
	@Autowired
	JdbcTemplate Template;
//Register teacher operation
	public boolean saveTeacher(Teacher teacher) {
		try{
			Object[] args={teacher.getTeacherId(), teacher.getFirstName(),teacher.getLastName(),teacher.getEmail(),teacher.getContactNumber(),teacher.getFaculty()};
			int ADDteacher=Template.update("insert into teacher(`TeacherId`,`FirstName`,`LastName`,`Email`,`ContactNumber`,`faculty`)values(?,?,?,?,?,?)",
					args);
		
				if(ADDteacher==1)
				{
					return true;
				}
			}catch(Exception e)
			{
				System.out.println(e);
			}
			return false;
			
			}
	
	
	//SELECT ALL TEACHER OPERATION
	public List<Teacher> AllTeachers() {
		List<Teacher> list = null;
		try {
			Object[] args = {};
			list = Template.query("select * from teacher", args,new TeacherRowMapper());

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}



}
