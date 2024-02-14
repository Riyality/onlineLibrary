package com.rt.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.rt.Service.BookService;
import com.rt.entity.BookEntity;

@Controller
public class BookController {

	@Autowired
   BookService bookService;
	
	@RequestMapping("/add")
	public String BookAdd() {
		return "add-books";
	}
	@RequestMapping("/addBook")
	public  String Book_Add(@ModelAttribute BookEntity entity, Model m) {
		 boolean isAdded = bookService.AddBook(entity);
		 
		 if (isAdded) {
			 m.addAttribute("succMsg","book is added succesfully");
			
		} else {
			 m.addAttribute("errMsg","book is not added ");

		}
		 return "add-books";
		
	}
	//----------------------------View All-------------------------------
	@RequestMapping("/bookList")
	public String BookList(Model m) {
		List<BookEntity> list = bookService.AllBook();
		m.addAttribute("allBook",list);
		return"library";
		
	}
}
