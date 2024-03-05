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
			Object args[] = {entity.getTitle(),entity.getAuthor(),entity.getLanguage(),entity.getISBN(),entity.getPublisher(),entity.getPublisherCity(),entity.getPublicationDate()};
			int data = template.update("INSERT INTO book (`Title`, `Author`,`Language`, `ISBN`, `Publisher`, `PublisherCity`, `PublicationDate`) VALUES (?, ?, ?, ?, ?, ?, ?)", args);

		
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
	
	
	
	
	public boolean update(BookEntity entity) {
	    try {
	        Object[] args = {entity.getTitle(), entity.getAuthor(), entity.getLanguage(), entity.getISBN(),
	        		entity.getPublisher(), entity.getPublisherCity(), entity.getPublicationDate(), entity.getBookId()};
	        
	        String sql = "update book SET `Title` = ?, `Author` = ?, `Language` = ?, `ISBN` = ?, `Publisher` = ?, "
	        		+ "`PublisherCity` = ?, `PublicationDate` = ? WHERE BookId = ?";
	        
	        int a = template.update(sql, args);

	        if (a == 1) {
	            return true;
	        } else {
	            return false;
	        }
	    } catch (Exception e2) {
	        e2.printStackTrace();
	        return false;
	    }
	}

	
	
	
	public List<BookEntity> AllBook() {
	    List<BookEntity> list = null;

	    try {
	        list = template.query("select * from book", new BookRowMapper());
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return list;
	}




	public boolean deletedata(int bookId) {
		try {

			Object[] args = {bookId};
			int data = template.update("delete from book where bookId=?", args);
			 
			 if(data==1){
				 return true;
			 }	

		} catch (Exception e2) {
         System.out.println(e2);
		}
		return false;
	}




	public int getNumberOfBooks() {
        return template.queryForObject("SELECT COUNT(*) FROM book", Integer.class);
    }
	
}
