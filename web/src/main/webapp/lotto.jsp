<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
List<Integer> list = new ArrayList<>();
Random r = new Random();

for (int i = 1; i <= 6; i++) {
    list.add(r.nextInt(100)); // 
}
%>
<table border="1">
<%
for (int i = 0; i < list.size(); i++) {
%>
    <tr>
        <td><%= list.get(i) %></td>
    </tr>
<% } %>
</table>
</body>
</html>