<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
<script type="text/javascript" src="<%=basePath%>My97DatePicker/WdatePicker.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>js/ajax.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			购物流程
		</div>
	</div>
	<div class="blank"></div>
	<div class="block table">
		<form action="index/checkout.action" method="post" name="theForm" id="theForm" onsubmit="return checkConsignee(this)">
			<div class="flowBox">
				<h6>
					<span>点餐信息</span>
				</h6>
				<table width="99%" align="center" border="0" cellpadding="5" cellspacing="1" bgcolor="#dddddd">
					<tr>
						<td bgcolor="#ffffff">请选择城市:</td>
						<td bgcolor="#ffffff" colspan="2"><select name="cityid" style="width: 170px; height: 30;" id="cityid">
								<option value="">---请选择城市---</option>
								<c:forEach items="${cityList}" var="city">
									<option value="${city.cityid }">${city.cityname }</option>
								</c:forEach>
						</select></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">请选择连锁店:</td>
						<td bgcolor="#ffffff" colspan="2"><select name="cinemaid" style="width: 170px; height: 30;" id="cinemaid">
								<option value="">---请选择连锁店---</option>
						</select></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">观看日期:</td>
						<td bgcolor="#ffffff" colspan="2"><input name="viewdate" type="text" class="inputBg" id="viewdate"
							readonly="readonly" onclick="WdatePicker()" /> (必填)</td>
					</tr>
					<tr>
						<td colspan="4" align="center" bgcolor="#ffffff"><input type="hidden" name="basepath" id="basepath"
							value="<%=basePath%>" /> <input type="submit" id="sub" class="bnt_blue_2" value="确定" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
