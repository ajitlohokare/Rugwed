package com.et.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.et.model.Expense;

public interface ExpenseRepository extends JpaRepository<Expense, Integer> {

}
