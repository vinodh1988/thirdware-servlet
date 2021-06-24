<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<script>
  data={a:123,b:40}
  d= data.c.length

</script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" ></script>
</head>
<body>

<form action="emp.do" method="post">
   <table>
       <tr>
          <th>Sno</th>
          <td><input type="text" name="eno"></td>
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
          <th>Department</th>
          <td>
          <select name="dno">
             <c:forEach items="${dlist}" var="x">
                <option value="${x.departmentno}">${x.name}</option>
             </c:forEach>
          </select>
          </td>
        </tr>
        <tr>
          <td><input type="submit" value="Store Person Data" class="btn btn-primary"></td>
        </tr>
       
   </table>
   
</form>
</body>

</body>
</html>