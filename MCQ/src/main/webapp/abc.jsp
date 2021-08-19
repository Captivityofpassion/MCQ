<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
<h1>MCQ test</h1>
<br>
<br>
<%-- ${questionlist.getQuestionList()} --%>
<form action="/validate" method="post" modelAttribute="questionlist">

	<c:forEach items="${rajlist.getQuestionList()}" var="question" varStatus="status">
		
		<c:out value="${question.id}" />&emsp;
		<c:out value="${question.question}" />
<br><br>

		 <input type="hidden" name="QuestionList[${status.index}].id" value="${question.id}"/>
		<input type="hidden" name="QuestionList[${status.index}].question" value="${question.question}"/>
		<input type="hidden" name="QuestionList[${status.index}].option1" value="${question.option1}"/>
		<input type="hidden" name="QuestionList[${status.index}].option2" value="${question.option2}"/>
		<input type="hidden" name="QuestionList[${status.index}].option3" value="${question.option3}"/>
		<input type="hidden" name="QuestionList[${status.index}].option4" value="${question.option4}"/>
		
		<input type="radio"  name="QuestionList[${status.index}].uanswer" value=1>${question.option1}<br>
		<input type="radio"  name="QuestionList[${status.index}].uanswer" value=2>${question.option2}<br>
		<input type="radio"  name="QuestionList[${status.index}].uanswer" value=3>${question.option3}<br>
		<input type="radio"  name="QuestionList[${status.index}].uanswer" value=4>${question.option4}<br>
	<%-- 	<input name="QuestionList[${status.index}].uanswer" value="${question.id}"/> --%>
		<input type="hidden" name="QuestionList[${status.index}].canswer" value="${question.canswer}"/>
		<br><br>
			</c:forEach>
		<%--  <input name="QuestionList[${status.index}].id" value="${question.id}"/>   --%>
		 		
			<%-- <input name="contacts[${status.index}].lastname" value="${contact.lastname}"/>
			<input name="contacts[${status.index}].email" value="${contact.email}"/>
			<input name="contacts[${status.index}].phone" value="${contact.phone}"/> --%>
	
	
 <%-- <c:forEach items="${list}" var="question">
 		 <c:out value="${question.getId()}" />
       <c:out value="${question.getQuestion()}"/>
       <br>
       <input type="radio" name="op1" value="${question.getOption1()}" /> <c:out value="${question.getOption1()}" />
        <br>
        <input type="radio" name="op2" value="${question.getOption2()}" /> <c:out value="${question.getOption2()}" />
           <br>
           <input type="radio" name="op3" value="${question.getOption3()}" /> <c:out value="${question.getOption3()}" />
            <br>
            <input type="radio" name="op4" value="${question.getOption4()}" /> <c:out value="${question.getOption4()}" />
    <br>
    <br> 
  </c:forEach> --%>
  <input type="submit" value ="submit">
  
  </div>
</form>
</body>
</html>