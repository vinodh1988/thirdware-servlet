<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*,com.model.Person"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" ></script>
</head>
<body>
<form action="person.do" method="post">
   <table>
       <tr>
          <th>Sno</th>
          <td><input type="text" name="sno"></td>
        </tr>
        <tr>
          <th>Name</th>
          <td><input type="text" name="name"></td>
        </tr>
       <tr>
          <th>City</th>
          <td><input type="text" name="city"></td>
        </tr>
        <tr>
          <td><input type="submit" value="Store Person Data" class="btn btn-primary"></td>
        </tr>
       
   </table>
   <table class="table table-hover">
      <thead>
           <tr>
                <th>Sno</th>
                <th>Name</th>
                <th>City</th>
            </tr>
      </thead>
       <tbody>
   
   <%
       List<Person> list=(List<Person>) request.getAttribute("peoplelist");
       for(Person x:list)
       {
   %>
      <tr>
       <td> <%=x.getSno()%></td>
       <td> <%=x.getName()%></td>
       <td> <%=x.getCity()%></td>
       </tr>
       <%} %>
   </tbody>
   </table>
</form>
</body>
</html>