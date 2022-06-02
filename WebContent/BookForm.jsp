<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

	<title>Programing Network</title>
</head>
<body>
	<center>
		<h1>Books Management</h1>
        <h2>
        	<a href="new">Add New Book</a>
        	&nbsp;&nbsp;&nbsp;
        	<a href="list">List All Books</a>       	
        </h2>
	</center>
    <div align="center">
		<c:if test="${book != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${book == null}">
			<form action="insert" method="post">
        </c:if>
                <h2>
            		<c:if test="${book != null}">
            			Edit Book
            		</c:if>
            		<c:if test="${book == null}">
            			Add New Book
            		</c:if>
            	</h2>
        <table >
            <caption>
            </caption>
        		<c:if test="${book != null}">
        			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
        		</c:if>            
            <tr>
                <th>Title: </th>
                <td>
                	<input type="text" name="title" size="45"
                			value="<c:out value='${book.title}' />"
                		/>
                </td>
            </tr>
            <tr>
                <th>Author: </th>
                <td>
                	<input type="text" name="author" size="45"
                			value="<c:out value='${book.author}' />"
                	/>
                </td>
            </tr>
            <tr>
                <th>Price: </th>
                <td>
                	<input type="text" name="price" size="5"
                			value="<c:out value='${book.price}' />"
                	/>
                </td>
            </tr>
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
