<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //HTTP1.1
	response.setHeader("Pragma", "no-cache"); //HTTP1.0
	response.setHeader("Expires", "0"); // Proxies, 0 means for 0 second it will be there then gone.
	if(session.getAttribute("username")==null){
		response.sendRedirect("login.jsp");
	}

%> 
	Welcome ${username} <br>
	
	<a href = "videos.jsp">Videos here</a>
	
	<form action="Logout" method="post">
		<input type="submit" value="Logout">
	</form>

</body>
</html>