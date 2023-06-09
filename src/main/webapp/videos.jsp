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
	<iframe width="796" height="480" src="https://www.youtube.com/embed/OuBUUkQfBYM" title="Servlet &amp; JSP Tutorial | Full Course" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</body>
</html>