package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.BookDao;
import com.rt.entity.BookEntity;

@Service
public class BookService {
	@Autowired
	  BookDao bookDao;

		public   boolean addBook(BookEntity entity) {
		
			return bookDao.addBook(entity);
		}
		
		
		//----------------------viewAll-------------------

		public  List<BookEntity> all() {
			
			return bookDao.AllBook();
		}


		public boolean update(BookEntity entity) {
			return bookDao.update(entity);
		}


		public boolean deletedata(int bookId) {

			return bookDao.deletedata(bookId);
		}

}
