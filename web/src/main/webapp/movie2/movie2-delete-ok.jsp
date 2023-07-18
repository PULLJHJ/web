<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.web.common.DBCon"%>
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
String miNum = request.getParameter("miNum");
Connection con = DBCon.getcon();
String sql = "DELETE FROM MOVIE_INFO WHERE MI_NUM=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setString(1, miNum);

int result = ps.executeUpdate();
if(result != 1){
%>
<script>
alert("이미 삭제된 게시물입니다.");
location.href='<%=root%>/movie2/movie2-list.jsp';
</script>
<%
return;
}
%>
<script>
alert("정상적으로 처리 되었습니다.");
location.href='<%=root%>/movie2/movie2-list.jsp';
</script>
</body>
</html>