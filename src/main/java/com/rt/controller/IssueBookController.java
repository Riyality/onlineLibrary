package com.rt.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rt.entity.IssueBookEntity;
import com.rt.service.issueBookService;

@Controller
@RequestMapping("/books")
public class IssueBookController {

    @Autowired
    private issueBookService issueBookService;

    @RequestMapping("/issueBook-form")
    public String showAddBorrowForm(Model model) {
    	 model.addAttribute("issueBook", new IssueBookEntity());
         return "books/issueBook";
    }
    
    @RequestMapping("/issue")
    public String addBorrow(@ModelAttribute IssueBookEntity issueBook, Model model) {
        try {
            boolean isAvailable = issueBookService.isBookAvailable(issueBook.getBookId());
            
            if (!isAvailable) {
                model.addAttribute("errMsg", "Book with ID " + issueBook.getBookId() + " is not available.");
                return "redirect:/books/issueBook-form"; 
            }

            boolean isAdded = issueBookService.add(issueBook);

            if (isAdded) {
                model.addAttribute("succMsg", "Borrow entry added successfully");
            } else {
                model.addAttribute("errorMsg", "Failed to add borrow entry");
            }
        } catch (Exception e) {
            model.addAttribute("errMesssge", "An error occurred: " + e.getMessage());
        }

        return "redirect:/books/issuerecord";
    }

    @RequestMapping("/issuerecord")
    public String bookHistory(Model model) {
        List<IssueBookEntity> list = issueBookService.issuerecord();
        model.addAttribute("issueBookList", list);
        return "books/issueBookRecord";
    }
}
