package com.et.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.et.model.Expense;
import com.et.service.ExpenseService;




@Controller
public class MainController {

	@Autowired
	private ExpenseService expenseService;

	

	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("homepage");
		return mav;
	}

	 @GetMapping("/refresh")
		public String refresh(Model model) {

			List<Expense> expense=expenseService.findAll();
			model.addAttribute("expense",expense);
			System.out.println(expense);
			return "expenses";
		}
	
   
    @GetMapping("/expenses")
	public String home(Model m) {

		List<Expense> expense=expenseService.findAll();
		m.addAttribute("expense",expense);
		System.out.println(expense);
		return "expenses";
	}
  
    @GetMapping("/addexpense")
	public ModelAndView addexpense() {
		ModelAndView mav = new ModelAndView("addexpense");
		return mav;
	}

    @PostMapping("/save")
    public String saveExpense(@ModelAttribute Expense expense) {
    	
    	System.out.println(expense);
    	expenseService.save(expense);

    	return "redirect:/addexpense";
    }
    
    @GetMapping("/edit/{id}") 
	public String edit(@PathVariable int id,Model model) 
	{
		Expense expense=expenseService.findById(id);
		model.addAttribute("exp", expense);
		return "redirect:/edit";
		
	}
    
    
    @PostMapping("/update")
	public String update(@ModelAttribute Expense expense)
	{	
    	expenseService.save(expense);
		return "redirect:/expenses";
	}
    
    
    @GetMapping("/delete/{id}")
	public String delete(@PathVariable int id)
	{
		expenseService.delete(id);
		return "redirect:/expenses";
	}
    
}
