<%@page import="java.sql.PreparedStatement"%>
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
<% 
String miNum = request.getParameter("miNum");
Connection con = DBCon.getcon();
String sql = "DELETE FROM MOVIE_INFO WHERE MI_NUM=?";
PreparedStatement patmt = con.prepareStatement(sql);
patmt.setString(1,miNum);

int result = patmt.executeUpdate();
if(result != 1){
%>
<script>
alert("이미 삭제된게시물 입니다.");
location.href = '<%=root%>/movie/movie-list.jsp;
</script>
<%
return;
}
%>
<script>
alert("정상적으로 처리 되었습니다.");
location.href='<%=root%>/movie/movie-list.jsp';
</script>
</body>
</html>