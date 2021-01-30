<%@page import="kr.or.houroffice.user.member.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>페이지 이동 잘됨</h1>
<%
	Member m = (Member)session.getAttribute("member");
%>

<h3><%=m.getTestId() %></h3>
<h3><%=m.getTestNo() %></h3>
<h3><%=m.getTestName() %></h3>
</body>
</html>