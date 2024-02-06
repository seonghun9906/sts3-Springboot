<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="date" value="<%=new Date()%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 일시</title>
</head>
<body>
	[오늘의 날짜]
	<fmt:formatDate value="${date}" />
	<br> [현재의 시간]
	<fmt:formatDate value="${date}" type="time" />
	[날짜와 시간 둘다]
	<fmt:formatDate value="${date}" type="both" />
	<hr>
	<h2>날짜와 시간의 출력 형식 지정</h2>
	[f]
	<fmt:formatDate value="${date}" type="both" dateStyle="full"
		timeStyle="full" />
	<br> [l]
	<fmt:formatDate value="${date}" type="both" dateStyle="long"
		timeStyle="long" />
	<br> [m]
	<fmt:formatDate value="${date}" type="both" dateStyle="medium"
		timeStyle="medium" />
	<br> [s]
	<fmt:formatDate value="${date}" type="both" dateStyle="short"
		timeStyle="short" />
	<br>
	<hr>
	<h2>임의의 출력 형식 지정</h2>
	<fmt:formatDate value="${date}" pattern="yyyy-MM-dd (E)" />
	<fmt:formatDate value="${date}" type="time" pattern="(a) hh:mm:ss" />

	<hr>
	<h2>숫자의 출력 형식</h2>

	<p>
		예 1 :
		<fmt:formatNumber value="123456789" groupingUsed="false" />
		<!-- True면 123,456,789 형식으로 나옴 -->
		
	</p>
	<p>
		예 2 :
		<fmt:formatNumber value="3.141592" pattern="#.##" />
		<!-- #개수만큼 출력됨 -->
	</p>
	<p>
		예 3 :
		<fmt:formatNumber value="10.5" pattern="#.00000" />
	</p>
	<p>
		예 4 :
		<fmt:formatNumber value="1000000" type="currency" currencySymbol="$" />
	</p>
	<p>
		예 5 :
		<fmt:formatNumber value="0.98" type="percent" />
	</p>
</body>
</html>