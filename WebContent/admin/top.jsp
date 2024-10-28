<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<div class="topNav">
	<div class="wrapper">
		<div class="welcome">
			<a title=""><img src="images/userPic.png" alt="" /></a><span>欢迎使用本系统!&nbsp;${sessionScope.adminname }</span>
		</div>
		<div class="userNav">
			<ul>
				<li><span id="time"></span> <script>
					document.getElementById('time').innerHTML = new Date()
							.toLocaleString()
							+ ' 星期' + '日一二三四五六'.charAt(new Date().getDay());
					setInterval(
							"document.getElementById('time').innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",
							1000);
				</script></li>
				<li><a href="<%=basePath%>admin/editpwd.jsp" title=""><img src="images/icons/topnav/settings.png" alt="" /><span>修改密码</span></a></li>
				<li><a href="<%=basePath%>admin/exit.action" onclick="{if(confirm('确定要退出吗?')){return true;}return false;}"
					title=""><img src="images/icons/topnav/logout.png" alt="" /><span>退出系统</span></a></li>
			</ul>
		</div>
		<div class="clear"></div>
	</div>
</div>