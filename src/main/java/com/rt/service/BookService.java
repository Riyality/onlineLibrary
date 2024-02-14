package com.rt.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.Dao.BookDao;
import com.rt.entity.BookEntity;

@Service
public class BookService {
	@Autowired
	  BookDao bookDao;

		public   boolean AddBook(BookEntity entity) {
		
			return bookDao.addBook(entity);
		}
		
		
		//----------------------viewAll-------------------

		public  List<BookEntity> AllBook() {
			
			return bookDao.AllBook();
		}

}
