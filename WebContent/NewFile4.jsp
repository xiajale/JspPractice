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
				<form action="NewFile5.jsp" method="post" class="form-horizontal">
					<div class="form-group">
						<label>输入用户姓名:</label>
						<input type="text" class="form-control" name="username">
					</div>
					<div class="form-group">
						<label>选择性别:</label>
						<input type="radio" name="sex" value="男">男
						<input type="radio" name="sex" value="女">女
					</div>
					<div class="form-group">
						<label>选择密码提示问题</label>
						<select name="question" class="form-control">
							<option value="母亲生日">母亲生日</option>
							<option value="宠物名称">宠物名称</option>
							<option value="电脑配置">电脑配置</option>
						</select>
					</div>
					<div class="form-group">
						<label>请输入问题答案:</label>
						<input type="text" name="answer" class="form-control">
					</div>
					<div class="form-group">
						<label>请选择个人爱好:</label>
						<input type="checkbox" name="hobby" value="唱歌跳舞">唱歌跳舞
						<input type="checkbox" name="hobby" value="上网冲浪">上网冲浪
						<input type="checkbox" name="hobby" value="户外登山">户外登山
						<input type="checkbox" name="hobby" value="体育运动">体育运动
						<input type="checkbox" name="hobby" value="图书看报">图书看报
						<input type="checkbox" name="hobby" value="欣赏电影">欣赏电影
					</div>
					<button type="submit" class="btn btn-success">提交</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>