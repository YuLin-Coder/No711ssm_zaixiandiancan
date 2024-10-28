<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//键盘按下ESC时关闭窗口!
		$(document).keypress(function(e) {
			if (e.keyCode == 27) {
				//关闭窗口的方法
				window.close();
			}
		});
	});
	function selok() {
		opener.document.getElementById("image").value = myform.p.value;
		window.close();
	}
</script>
</head>
<body>
	<div id="rightSide">
		<div class="wrapper">
			<form action="upload/image.action" name="myform" method="post" enctype="multipart/form-data" class="form">
				<div class="widget">
					<div class="formRow">
						<div class="formRight">
							<input type="file" name="image" class="form-control" id="image" />
						</div>
						<div class="clear"></div>
					</div>

					<div class="formSubmit">
						<c:if test="${imageFileName ne null }">
						${imageFileName } <input type="hidden" name="p" value="upfiles/${imageFileName }" id="p">
							<input type="button" class="btn btn-info btn-single" value=" 确定  " onclick="selok();" />
						</c:if>
						<c:if test="${imageFileName eq null }">
							<input type="submit" id="sub" value="确认提交" class="redB">
						</c:if>
					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</body>
</html>

