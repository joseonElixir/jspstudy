<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="beanTest_ok.jsp">
<table>
	<tr>
		<th>이름:</th>
		<td> <input type="text" name="name"></td>
	</tr>
	<tr>
		<th>나이:</th>
		<td><input type="text" name="age"></td>
	</tr>
	<tr>
		<th>주소:</th>
		<td><input type="text" name="addr"></td>
	</tr>
	<tr>
		<th>전번:</th>
		<td><input type="text" name="tel"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="submit" value="전달">
		</td>
	</tr>
</table>
</form>
</body>
</html>