<%@page import="java.net.URLDecoder"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<%
					String welcome="第一次登录";
					String[] info={"","",""};
					Cookie[] cook=request.getCookies();
					if(cook!=null){
						for(int i=0;i<cook.length;i++){
							if(cook[i].getName().equals("userCookiee")){
								info=URLDecoder.decode(cook[i].getValue(),"utf-8").split("#");
								welcome=info[0]+",欢迎回来!";
							}
						}
					}
				%>
				<%=welcome %>
				<br>
				<form action="NewFile7.jsp" method="post">
					<div class="form-group">
						<label>姓名:</label>
						<input type="text" name="username" value="<%=info[0] %>" class="form-control">
					</div>
					<div class="form-group">
						<label>出生日期</label>
						<input type="text" name="birthday" value="<%=info[1] %>" class="form-control">
					</div>
					<div class="form-group">
						<label>邮箱地址:</label>
						<input type="text" name="email" value="<%=info[2] %>" class="form-control">
					</div>
					<button type="submit" class="btn btn-success">提交</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>