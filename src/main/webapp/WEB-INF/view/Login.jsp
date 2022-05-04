<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
</head>
<style>
	.fail{
		color:red;
	}
</style>
<body>
	<h1>MyCustomLoginPage</h1>
	<form:form action="${pageContext.request.contextPath}/authenticateTheUser"
		method="POST">
		<c:if test="${param.error!=null}">
			<i class="fail">帳號密碼有誤，請重新輸入</i>
		</c:if>
		<p>
			UserName: <input type="text" name="username">
		</p>
		<p>
			Password: <input type="password" name="password">
		</p>
		
		<input type="submit" value="login"/>
	</form:form>
</body>
</html>