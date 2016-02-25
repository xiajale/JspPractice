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
		if(application.getAttribute("count")==null){
			out.println("the page count start");
			application.setAttribute("count", 1);
		}else{
			int newCount=Integer.parseInt(application.getAttribute("count").toString())+1;			
			application.setAttribute("count", newCount);
			out.println("the count is"+newCount);
		}
	%>
</body>
</html>