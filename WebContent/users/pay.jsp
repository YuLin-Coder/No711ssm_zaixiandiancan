<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<base href="<%=basePath%>" />
<title>${title }</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="block box">
		<div class="blank"></div>
		<div id="ur_here">
			当前位置: <a href="<%=basePath%>">首页</a>
			<code> &gt; </code>
			付款
		</div>
	</div>
	<div class="blank"></div>
	<div class="block table">
		<form action="index/pay.action" method="post" name="theForm"
			id="theForm" onsubmit="return checkConsignee(this)">
			<input type="hidden" name="id" value="${id }" />
			<div class="flowBox">
				<h6>
					<span>付款</span>
				</h6>
				<table width="99%" align="center" border="0" cellpadding="5"
					cellspacing="1" bgcolor="#dddddd">
					<tr>
						<td bgcolor="#ffffff">付款银行:</td>
						<td bgcolor="#ffffff" colspan="2"><select class="inputBg"
							id="s" style="width: 171">
								<option value="中国工商银行">中国工商银行</option>
								<option value="中国农业银行">中国农业银行</option>
								<option value="中国建设银行">中国建设银行</option>
								<option value="中国交通银行">中国交通银行</option>
								<option value="招商银行">招商银行</option>
								<option value="支付宝">支付宝</option>
						</select></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">卡号:</td>
						<td bgcolor="#ffffff" colspan="2"><input type="text"
							class="inputBg" id="name" /></td>
					</tr>
					<tr>
						<td bgcolor="#ffffff">支付密码:</td>
						<td bgcolor="#ffffff" colspan="2"><input type="password"
							class="inputBg" id="cond" /></td>
					</tr>
					<tr>
						<td colspan="4" align="center" bgcolor="#ffffff"><input
							type="submit" class="bnt_blue_2" value="确定" /></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
