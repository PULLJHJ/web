<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
String biTitle = request.getParameter("biTitle");
if(biTitle != null && biTitle.length() !=0){
	String biContent = request.getParameter("biContent");
	String biWriter = request.getParameter("biWriter");
	String biCnt = request.getParameter("biCnt");
	Connection con = DBCon.getcon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO BOARD_INFO (BI_TITLE, BI_CONTENT, BI_WRITER, BI_CNT, BI_CREDAT)";
	sql += " values('" + biTitle + "','" + biContent + "','" + biWriter +"','" + biCnt + "', NOW())";
	int result = stmt.executeUpdate(sql);
	if(result == 1){
%>
<script>
alert("<%=biTitle%> 님 회원가입이 성공하였습니다. 로그인을 해주세요.");
location.href="/web/login.jsp";
</script>
<%
	}
}
%>
<form>
	<label for="biTitle">타이틀</label>
	<input type="text" id="biTitle" name = "biTitle"><br>
	<label for="biContent">콘텐트</label>
	<input type="text" id="biContent" name = "biContent"><br>
	<label for="biWriter">작성자</label>
	<input type="text" id="biWriter" name = "biWriter"><br>
	<label for="biCnt">번호</label>
	<input type="text" id="biCnt" name = "biCnt"><br>
	<button>등록</button>
</form>
</body>
</html>