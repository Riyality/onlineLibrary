package com.rt.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rt.entity.Teacher;



public class TeacherRowMapper implements RowMapper<Teacher> {
	public Teacher mapRow(ResultSet rs, int rowNum) throws SQLException {
		return new Teacher(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));
	}





}
