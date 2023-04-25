<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expense Tracker</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand">Expense Tracker</a>
       
    </div>
</nav>
<br />
<br />
<br />
<div class="container">
    <div class="row">
        <h1> Registered Expenses </h1>
    </div>
    <table class="table table-striped table-bordered table-hover">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Expense Name</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="e : ${expense}">
                <td th:text="${e.eid}"></td>
                <td th:text="${e.expensename}"></td>
                <td th:text="${e.amount}"></td>
        </tbody>
    </table> 
</div>
</body>