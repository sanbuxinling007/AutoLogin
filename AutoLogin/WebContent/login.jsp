<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] cook = request.getCookies();//获取本地所有的Cookie对象
		String[] userMessage = new String[] { "", "" }; //用户存储从cookie中获取的用户名和密码
		if (cook != null) {
			for (int i = 0; i < cook.length; i++) {
				if (cook[i].getName().equals("userInfo")) {
					userMessage = cook[i].getValue().split("#");//通过分割split获取用户名和密码.
				}

			}
		}
	%>

	<p>本页面仅用于测试,只有输入用户名为lisan,密码为12345时,提示正常登录,否则提示用户名密码错误</p>


	<form action="check.jsp" method="post">
		<table>
			<tr>
				<td>用户名:</td>
				<td><input name="userName" type="text"
					value="<%=userMessage[0]%>"></td>
			</tr>

			<tr>
				<td>密码</td>
				<td><input type="password" name="password"
					value="<%=userMessage[1]%>"></td>
			</tr>

	
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="提交">&nbsp;<input
					type="reset" value="重置"></td>
			</tr>

		</table>

	</form>

</body>
</html>