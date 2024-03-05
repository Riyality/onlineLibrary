package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.rt.RowMapper.HistoryRowMapper;
import com.rt.StudentEntity.StudentEntity;
import com.rt.entity.BorrowBook;
import com.rt.mapper.StudentRowMapper;

@Repository
public class BorrowBookDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	public boolean add(BorrowBook borrowBook) {
		try {
			Object args[] = { 
				borrowBook.getBookId(),
				borrowBook.getStudentName(),
				borrowBook.getIssueDate(),
				borrowBook.getDueDate(),
				
			};
			
			int data = jdbcTemplate.update("INSERT INTO bookhistory (`BookId`, `StudentName`, `IssueDate`, `DueDate`) VALUES (?, ?, ?, ?)", args);

			if (data == 1) {
				System.out.println(data);
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	
	
	
	public List<BorrowBook> History() {
	    List<BorrowBook> list = null;

	    try {
	        list = jdbcTemplate.query("select * from bookhistory", new HistoryRowMapper());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}

	
	
	}

