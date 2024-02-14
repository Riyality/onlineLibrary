package com.rt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rt.entity.BookEntity;
import com.rt.service.BookService;

@Controller
@RequestMapping("/books")
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping("/add-form")
	public String addForm() {
		return "books/add";
	}

	@RequestMapping(method=RequestMethod.POST)
	public String add(@ModelAttribute BookEntity bookEntity, Model model) {
		boolean isAdded = bookService.addBook(bookEntity);

		if (isAdded) {
			model.addAttribute("succMsg", "book is added succesfully");

		} else {
			model.addAttribute("errMsg", "book is not added ");

		}
		return "books/list";

	}

	// ----------------------------View All-------------------------------
	@RequestMapping
	public String list(Model model) {
		List<BookEntity> list = bookService.all();
		model.addAttribute("allBook", list);
		return "books/list";

	}
}
