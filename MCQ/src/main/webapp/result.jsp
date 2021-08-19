<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>result page</title>
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
<h1>CONGRAGULATIONS !!<br><br>
your score is ${score} out of ${size}</h1>
<button type="button"><a href="/reviewcontroller"><h1>review your answers</h1></a></button>
</div>

</body>
</html>