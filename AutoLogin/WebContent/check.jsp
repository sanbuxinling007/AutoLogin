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
		request.setCharacterEncoding("utf-8");

		String userName = request.getParameter("userName");
		String password = request.getParameter("password");

		if (userName.equals("lisan") && password.equals("12345")) {
			Cookie mycook=new Cookie("userInfo",userName+"#"+password);  //设置cookie对象
			mycook.setMaxAge(60*60*20*365); //设置cookie有效期
			response.addCookie(mycook);//把cookie对象发送到客户端进行存储
	%>

	<script>
		alert("登录成功!");
		window.location.href = "login.jsp";
	</script>

	<%
		} else {
	%>
	<script>
		alert("登录失败,用户名或者密码错误");
		window.location.href = "login.jsp";
	</script>

	<%
		}
	%>




</body>
</html>