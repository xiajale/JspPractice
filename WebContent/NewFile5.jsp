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
				<table class="table">
					<caption>个人信息</caption>
					<thead>
						<tr>
							<th>属性</th>
							<th>值</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>输入用户姓名:</td>
							<td><%=new String(request.getParameter("username").getBytes("iso-8859-1"),"utf-8") %></td>
						</tr>
						<tr>
							<td>选择性别:</td>
							<td><%=new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8") %></td>
						</tr>
						<tr>
							<td>选择密码提示问题</td>
							<td><%=new String(request.getParameter("question").getBytes("iso-8859-1"),"utf-8") %></td>
						</tr>
						<tr>
							<td>输入问题答案:</td>
							<td><%=new String(request.getParameter("answer").getBytes("iso-8859-1"),"utf-8") %></td>
						</tr>
						<tr>
							<td>选择个人爱好:</td>
							<td>
								<%
									String[] like=request.getParameterValues("hobby");
									for(int i=0;i<like.length;i++){
										out.print(new String(like[i].getBytes("iso-8859-1"),"utf-8"));
									}
								%>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>