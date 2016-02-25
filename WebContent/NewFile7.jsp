<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("username");
		System.out.println(name);
		String birthday=request.getParameter("birthday");
		String email=request.getParameter("email");
		String cookieContent=name+"#"+birthday+"#"+email;
		Cookie myCook=new Cookie("userCookiee",URLEncoder.encode(cookieContent,"utf-8"));
		myCook.setMaxAge(60*2);
		response.addCookie(myCook);
	%>
	success!<br>
	<%=name %><br>
	<%=birthday %><br>
	<%=email %><br>
</body>
</html>