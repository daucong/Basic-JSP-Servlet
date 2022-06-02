<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<style>
		div{
		 padding-right: 200px;
		 padding-left: 200px;
		}
	</style>
	<title>Programing Network</title>
</head>
<body>
<% 
request.getSession(false);
if (session != null) { 
    // Already created.
    %>
  <a href="http://localhost:8080/Bookstore/login.jsp"> Logout</a><% 
}
String name = request.getParameter("name");
%>
<br><br>
<%
out.println("Welcome: "+name);
%>
	<center>
		<h1>Books Management</h1>
        <h2>
        	<a href="new">Add New Book</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Books</a>
        	
        </h2>
	</center>
    <div align="center" >
    <caption><h2>List of Books</h2></caption>
        <table class="table table-striped" >           
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Price</th>
                <th>Actions</th>
            </tr>
            <c:forEach var="book" items="${listBook}">
                <tr>
                    <td><c:out value="${book.id}" /></td>
                    <td><c:out value="${book.title}" /></td>
                    <td><c:out value="${book.author}" /></td>
                    <td><c:out value="${book.price}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${book.id}' />">Edit</a>
                    	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${book.id}' />">Delete</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
