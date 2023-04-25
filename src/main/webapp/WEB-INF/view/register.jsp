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
        <a class="navbar-brand"href="/">Expense Tracker</a>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active"  href="/register">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active"  href="/login">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
<br />
<br />
<br />
<div class="container">
 <div class="row">
        <h1 class="text-center"> Welcome to Expense Tracker </h1>
    </div>
    <br>
    <br>
    <div class="row col-md-8 offset-md-2">
        <div class="card">
            
            <div class="card-header">
                <h2 class="text-center">User Registration</h2>
            </div>
            <div class="card-body">
                <form action="@{/register/save}" method="POST">

                    	<div class="form-group">
							<label>Enter Name</label><input type="text"
								class="form-control" name="username">
						</div>
						<br>
						
						<div class="form-group">
							<label>Enter Email</label><input type="text"
								class="form-control" name="email">
						</div>
						<br>
						<div class="form-group">
							<label>Enter Password</label><input type="password"
								class="form-control" name="password">
						</div>
                    <br>
                    <div class="form-group mb-3">
                        <button class="btn btn-primary" type="submit">Submit</button>
                   
                     <span> 
                            <a href="/login">Login</a>
                        </span>
                        </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>