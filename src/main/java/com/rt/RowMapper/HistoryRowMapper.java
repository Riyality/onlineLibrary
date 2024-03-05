package com.rt.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.rt.entity.BorrowBook;

public class HistoryRowMapper implements RowMapper<BorrowBook> {
	
	public BorrowBook mapRow(ResultSet bk, int rowNum) throws SQLException {
		return new BorrowBook (bk.getInt(1),bk.getInt(2),bk.getString(3),bk.getString(4),bk.getString(5));
	}
}
