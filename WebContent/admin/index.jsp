<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!doctype html>
<html lang="zh_CN">
<head>
<base href="<%=basePath%>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎使用后台管理系统</title>
<link href="css/main.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
	function checkLogin() {
		var username = document.myform.username.value;
		var password = document.myform.password.value;
		if (username == '') {
			alert('请输入用户名');
			document.myform.username.focus();
			return false;
		}
		if (password == '') {
			alert('请输入密码');
			document.myform.password.focus();
			return false;
		}
	}
</script>
</head>
<body class="nobg loginPage">

	<!-- Main content wrapper -->
	<div class="loginWrapper">
		<div class="loginLogo">
			<img src="images/loginLogo.png" alt="" />
		</div>
		<div class="widget">
			<div class="title">
				<img src="images/icons/dark/files.png" alt="" class="titleIcon" />
				<h6>欢迎使用网站后台管理系统</h6>
			</div>
			<form action="<%=basePath%>admin/login.action" name="myform" class="form" id="validate" method="post"
				onSubmit="return checkLogin()">
				<fieldset>
					<div class="formRow">
						<label for="login">用户名:</label>
						<div class="loginInput">
							<input type="text" name="username" id="username" placeholder="请输入用户名" />
						</div>
						<div class="clear"></div>
					</div>

					<div class="formRow">
						<label for="pass">密码:</label>
						<div class="loginInput">
							<input type="password" name="password" id="password" placeholder="请输入密码" />
						</div>
						<div class="clear"></div>
					</div>

					<div class="loginControl">
						<div class="rememberMe">&nbsp;</div>
						<input type="submit" value="登录" class="dredB logMeIn" />
						<div class="clear"></div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>