<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String ciNum = request.getParameter("ciNum");

Connection con = DBCon.getcon();
Statement stmt = con.createStatement();
String sql = "SELECT CI_NUM, CI_NAME, CI_DESC FROM CLASS_INFO";
sql += " WHERE CI_NUM=" + ciNum;
ResultSet rs = stmt.executeQuery(sql);
if(!rs.next()){
%>
<script>
alert("이미 삭제된 게시물입니다.");
history.back();
</script>
<%
return;
}
%>
<table border = "1">
<tr>
<th>이름</th>
<td><%= rs.getString("CI_NAME") %></td>
</tr>
<tr>
<th>설명</th>
<td><%=rs.getString("CI_DESC") %></td>
</tr>
<tr>
<th colspan="2"><button>수정</button> <button>삭제</button></th>
</tr>

</table>
</body>
</html>