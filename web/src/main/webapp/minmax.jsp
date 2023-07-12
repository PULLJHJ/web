<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
int min = Integer.MAX_VALUE; // 초기값을 최댓값으로 설정
int max = Integer.MIN_VALUE; // 초기값을 최솟값으로 설정

for (int i = 1; i <= 10; i++) {
    int num = r.nextInt(100) + 1;
    if (list.indexOf(num) == -1) {
        list.add(num);
        if (min > num) {
            min = num;
        }
        if (max < num) {
            max = num;
        }
    }
}
%>
<table border="1">
<tr>
    <td><%= min %></td>
    <td><%= max %></td>
</tr>
</table>
</body>
</html>
