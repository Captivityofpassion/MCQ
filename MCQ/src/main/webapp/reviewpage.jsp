<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>review page</title>
<style>
.mydiv{
 border: 5px outset red;
  background-color: lightblue;
  text-align: center;
}
</style>
</head>
<body>
<div class="mydiv">
<h1>review your answer</h1>
<br>

<br> <br>
	<c:forEach items="${report.getQuestionList()}" var="question">
		
		<c:out value="${question.id}" />&emsp;
		<c:out value="${question.question}" />
		<br>
		<c:out value="${question.option1}" /><br>
		<c:out value="${question.option2}" /><br>
		<c:out value="${question.option3}" /><br>
		<c:out value="${question.option4}" /><br>
		<br>
		<c:out value= "The option you choosed ${question.uanswer}"/><br>
		<c:out value= "The correct option is ${question.canswer}"/><br>
		<br>
		<hr>
		</c:forEach>
<br><br>
</div>
</body>
</html>