package com.et.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.et.model.Expense;
import com.et.repository.ExpenseRepository;

@Service
public class ExpenseService {

	@Autowired 
	ExpenseRepository expenseRepository;

	public List<Expense> findAll() {
		return expenseRepository.findAll();
	}

	public void save(Expense expense) {
		expenseRepository.save(expense);
	}
	public Expense findById(int id)  
	{
		Optional<Expense> e=expenseRepository.findById(id); 
		
		if(e.isPresent())
		{
			return e.get();
		}
		return null;
	}
	public void delete(int id)
	{
		expenseRepository.deleteById(id);
		
	}

}