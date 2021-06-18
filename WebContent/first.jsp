<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <h1>This is our home page</h1>
     <h3>Types of jsp standard tags</h3>
     <ul>
     <%
        //this tag is called scriptlet
  String[] n= {"Scriptlet","Expression","Declartive","Directive","Comment"};
     for(String x:n){
     %>
     <li><%=x%></li>
     <%} %>
     </ul>
</body>
</html>