<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.a {
	background-color: #FFFFFF;
	height: 245px;
	width: 360px;
	position: absolute;
	right: 500px;
	top: 150px;
}

/* .font-spacing { */
/* 	letter-spacing: 5px; */
/* } */
.td {
	white-space: nowrap;
}

a {
	color: #000000;
	text-decoration: none;
	font-family: 楷体;
}

.footer {
	font-size: 20px;
	position: absolute;
	bottom: -20px;
	left: 550px;
}

.marquee {
	position: absolute;
	top: 10px;
}
</style>
</head>
<body>
	<img src="image/background.jpg" width="100%" height="100%"
		style="z-index: -100; position: absolute; left: 0; top: 0">
	<div>
		<marquee scrollamount="3">
			<font color="#FFFFFF">欢迎访问青岛工学院学生平时成绩管理系统</font>
		</marquee>
	</div>

	<div class="a">
		<img src="image/submit_decorate.jpg">
		<form action="" method="post" name="form1">
			<br>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font face="楷体">身份</font> <select name="identity">
				<option value="student">学生</option>
				<option value="teacher">教师教辅人员</option>
				<option value="administrator">管理员</option>
			</select><br> <br>

			<table>
				<tr>
					<td class="td">用户名：<input type="text" name="userid"
						value="${param.userid }" /></td>
				</tr>
				<tr>
					<td class="td">密&nbsp;&nbsp;&nbsp;码：<input type="password"
						name="userpwd" value="${param.userpwd }" /></td>
				</tr>
				<tr>
					<td class="td">验证码：<input type="text" name="checkcode" /><img
						alt="" src="CheckCode" border="0"><input type="submit"
						value="换一张" onclick="form1.action='Changecheckcode'" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="登录"
						onclick="form1.action='Logcheck'" />&nbsp;<input type="reset"
						value="重置" /></td>
				</tr>
			</table>
			<div id="mes">${info}</div>

		</form>
		<!-- <div class="foot1"> -->
		<!-- <a href="#">忘记密码?</a><a href="register.html">|在线注册</a><a href="#">|意见反馈</a> -->
		<!-- </div> -->
	</div>

	<div class="footer">
		<p>created by 湖南明宇软件有限公司</p>
	</div>
</body>
</html>