<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
String biNum = request.getParameter("biNum");
String biTitle = request.getParameter("biTitle");
String biContent = request.getParameter("biContent");
String biWriter = request.getParameter("biWriter");
Connection con = DBCon.getcon();
String sql = "UPDATE BOARD_INFO";
sql += " SET BI_TITLE=?,";
sql += " BI_CONTENT=?,";
sql += " BI_WRITER=?";
sql += " WHERE BI_NUM=?";

PreparedStatement patmt = con.prepareStatement(sql);
patmt.setString(1,biTitle);
patmt.setString(2,biContent);
patmt.setString(3,biWriter);
patmt.setString(4,biNum);
int result = patmt.executeUpdate();
if(result==1){
%>
<script>
alert("수정이 완료되었습니다.");
location.href='<%=root%>/board/board-view.jsp?biNum=<%=biNum%>';
</script>
<%
}
%>
</body>
</html>