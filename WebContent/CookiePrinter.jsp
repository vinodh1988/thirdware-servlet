<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" >
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" ></script>
<body>
<form action="CookieHandler">
<div class="alert alert-info">

    Cookie DATA ::: <b> ${cookie.message.value}</b> <br/>
    Modify Cookie Data<input type="text" name="message"> <br/>
    <button type="submit" class="btn btn-danger">Add Cookie</button>

</div>
</form>
</body>
</html>