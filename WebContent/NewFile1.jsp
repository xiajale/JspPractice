<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link href="bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>
	.container{
		border:1px solid red;
		text-align:center;
	}
	span{
	/* 	border:1px solid red; */
	}
	.content{
		border:1px solid red;
	}
</style>
</head>
<body>
	<%
		List<String> list =new ArrayList<String>();
		String driverClass="com.mysql.jdbc.Driver";
		Connection conn=null;
		String url="jdbc:mysql://localhost:3306/jspexample";
		String user="root";
		String password="936502";
		String sql="select d_name from dept";
		try{
			Class.forName(driverClass).newInstance();
			conn=DriverManager.getConnection(url,user,password);
			Statement statement=conn.createStatement();
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next()){
				list.add(rs.getString(1));
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3>员工信息查询</h3>
				<br>
				<div>
					<div class="row">
						<span class="col-md-3">员工姓名:</span>
						<span class="col-md-3">年龄:</span>
						<span class="col-md-3">所在部门:</span>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control">
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control">
					</div>
					<div class="col-md-3">
						<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
							dropdown
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<%
								for(int i=0;i<list.size();i++){
									out.print("<li><a>"+list.get(i)+"</a></li>");
								}
							%>
						</ul>
					</div>
					<div class="col-md-3">
						<button class="btn btn-info" type="button">查&nbsp;&nbsp;询</button>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	<script src="jquery-2.1.4.min.js"></script>
	<script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</body>
</html>