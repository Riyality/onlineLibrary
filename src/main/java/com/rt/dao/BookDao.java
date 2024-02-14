package com.rt.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.rt.entity.BookEntity;
import com.rt.mapper.BookRowMapper;

@Repository
public class BookDao {

	@Autowired
	JdbcTemplate template;

	public boolean addBook(BookEntity entity) {
		try {
			Object args[] = { entity.getBookId(),entity.getTitle(),entity.getAuthor(),entity.getLanguage(),entity.getISBN(),entity.getPublisher(),entity.getPublisherCity(),entity.getPublicationDate()};
			int data = template.update("INSERT INTO book (`BookId`, `Title`, `Author`,`Language`, `ISBN`, `Publisher`, `PublisherCity`, `PublicationDate`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)", args);

		
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
	//---------------------------------view All------------------------------------

	public List<BookEntity> AllBook() {
	    List<BookEntity> list = null;

	    try {
	        list = template.query("select * from book", new BookRowMapper());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}
}
