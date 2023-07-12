<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String root = request.getContextPath(); 	
%>
<div>
	<a href="<%=root %>/">Home</a>
	<a href="<%=root %>/login.jsp">Login</a>
	<a href="<%=root %>/join.jsp">Join</a>
	<a href="<%=root %>/board.jsp">Board</a>
</div>

<!-- common에서 생성한 String root를 가지고 원래 경로인 /web/login.jsp를 root/login.jsp로 바꿈. -->