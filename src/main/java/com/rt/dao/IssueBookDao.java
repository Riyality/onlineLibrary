package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.IssueBookEntity;
import com.rt.mapper.issuerecordRowMapper;

@Repository
public class IssueBookDao  {

	@Autowired
	JdbcTemplate jdbcTemplate;

	public boolean add(IssueBookEntity issueBook) {
		try {
			Object args[] = {issueBook.getUserId(), issueBook.getUserType(),
					issueBook.getBookId(), issueBook.getIssueDate(), issueBook.getDueDate(),
					issueBook.getStatus() };

			int data = jdbcTemplate.update(
					"INSERT INTO issuerecord ( `UserId`, `UserType`, `BookId`, `IssueDate`, `DueDate`, `Status`) VALUES ( ?, ?, ?, ?, ?, ?)",
					args);
	        if (data == 1) {
	            // Update totalQuantity and availableQuantity based on the status
	            String status = issueBook.getStatus();
	            int quantityChange = 0;
	            if (status.equals("Pending")) {
	                quantityChange = -1;
	            } else if (status.equals("Submitted")) {
	                quantityChange = 1;
	            }
	            jdbcTemplate.update("UPDATE Book SET AvailableQuantity = AvailableQuantity + ?, Status = ? WHERE BookId = ?",
	                    quantityChange, status, issueBook.getBookId());
	            return true;
	        } else {
	            return false;
	        }

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<IssueBookEntity> issuerecord() {
		List<IssueBookEntity> list = null;

		try {
			list = jdbcTemplate.query("SELECT * FROM issuerecord", new issuerecordRowMapper());
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	public int getIssuedQuantityByBookId(int bookId) {
	    String sql = "SELECT COUNT(*) FROM IssueRecord WHERE BookId = ?";
	    return jdbcTemplate.queryForObject(sql, Integer.class, bookId);
	}

	public int getTotalQuantityByBookId(int bookId) {
	    String sql = "SELECT TotalQuantity FROM Book WHERE BookId = ?";
	    return jdbcTemplate.queryForObject(sql, Integer.class, bookId);
	}

	//need
        public int getTotalIssuedBooks() {
	        String sql = "SELECT COUNT(*) FROM issuerecord"; 
	        return jdbcTemplate.queryForObject(sql, Integer.class);
	    }
        
        
     
			
	    }