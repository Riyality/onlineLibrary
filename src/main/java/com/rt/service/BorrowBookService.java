package com.rt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rt.dao.BorrowBookDao;
import com.rt.entity.BorrowBook;

@Service
public class BorrowBookService {
	
	
	@Autowired
	  BorrowBookDao borrowBookDao;
	
	public boolean add(BorrowBook borrowBook) {
		return borrowBookDao.add(borrowBook);
	}

	public List<BorrowBook> History() {
		return borrowBookDao.History();
	}


	}


