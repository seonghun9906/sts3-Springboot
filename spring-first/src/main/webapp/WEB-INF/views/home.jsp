<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style type="text/css">
		@import url("resources/css/style.css");
	</style>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<a href = "app/first">[이동]</a>
<a href = "card">[자기소개 이동]</a>
 <!-- first : URI(식별자) -->
 
 <hr>
 
 <img src="resources/images/google.png">
 
</body>
</html>
