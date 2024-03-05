package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.service.BorrowBookService;
import com.rt.StudentEntity.StudentEntity;
import com.rt.entity.BorrowBook;

@Controller
@RequestMapping("/books")
public class BorrowBookController {

	@Autowired
	private BorrowBookService borrowBookService;
	
	

	@RequestMapping("/addBorrowForm")
	public String showAddBorrowForm() {
		return "books/addBorrow";
	}

	@RequestMapping("/addBorrow")
	public String addBorrow(@ModelAttribute BorrowBook borrowBook, Model model) {
		try {
			boolean isAdded = borrowBookService.add(borrowBook);

			if (isAdded) {
				model.addAttribute("succMsg", "Borrow entry added successfully");
			} else {
				model.addAttribute("errMsg", "Failed to add borrow entry");
			}
		} catch (Exception e) {
			model.addAttribute("errMsg", "An error occurred: " + e.getMessage());
		}

		return "redirect:/books/History";
	}

	@RequestMapping("/History")
	public String bookHistory(Model m) {
		List<BorrowBook> list = borrowBookService.History();
		m.addAttribute("BookHistory", list);
		return "books/bookHistory";

	}
	}
