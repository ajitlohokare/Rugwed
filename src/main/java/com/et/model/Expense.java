package com.et.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "expense")
public class Expense {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int amount;

	private String expensename;
	
	private String note;

	private String date;


	public Expense() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getExpensename() {
		return expensename;
	}
	
	public String getNote() {
		return note;
	}

	public String getDate() {
		return date;
	}

	public void setExpensename(String expensename) {
		this.expensename = expensename;
	}
	
	public void setNote(String note) {
		this.note = note;
	}
	
	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Expense [id = " + id + ", amount = " + amount + ", expensename = " + expensename + ", note = " + note + ", date = " + date + "  ] ";
	}
}
