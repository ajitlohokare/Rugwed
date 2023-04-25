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
        <a class="navbar-brand" >Expense Tracker</a>
      
    </div>
</nav>
<br />
<br />
<br />
<div class="container">
    <div class="row col-md-8 offset-md-2">
        <div class="card">
            
            <div class="card-header">
                <h2 class="text-center">Add Expense</h2>
            </div>
            <div class="card-body">
                <form method="post" role="form" th:action="@{/expense/save}" th:object="${user}">

                    <div class="form-group mb-3">
                        <label class="form-label">Add Expense</label>
                        <input class="form-control"
                               id="expensename"
                               name="expensename"
                               placeholder="Add Expense"
                               th:field="*{expensename}"
                               type="text"
                        />
                      
                    </div>

                    <div class="form-group mb-3">
                        <label class="form-label">Add Amount</label>
                        <input class="form-control"
                               id="amount"
                               name="amount"
                               placeholder="Add Amount"
                               th:field="*{amount}"
                               type="text"
                        />
                    </div>
                    <div class="form-group mb-3">
                        <button class="btn btn-primary" type="submit">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>