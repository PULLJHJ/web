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
String ciName = request.getParameter("ciName");
if(ciName != null && !ciName.isEmpty()){
	String ciDesc = request.getParameter("ciDesc");
	
Connection con = DBCon.getcon();
Statement stmt = con.createStatement();
String sql = "INSERT INTO CLASS_INFO (CI_NAME, CI_DESC)";
sql += "VALUES ('"+ ciName +"','" + ciDesc + "')";
int result = stmt.executeUpdate(sql);
if(result == 1){
%>
<script>
alert("작성 완료");
location.href = "/web/class/class-list.jsp";
</script>
<%
}
}
%>

<form>
<table border="1">
        <tr>
            <th>과목</th>
            <td><input type="text" id="ciName" name="ciName"></td>
        </tr>
        <tr>
            <th>내용</th>
            <td><textarea id="ciDesc" name="ciDesc" style="resize:none" cols="30" rows="15"></textarea></td>
        </tr>
        <tr>
            <th colspan="2"><button>등록</button></th>
        </tr>
        </table>
</form>
</body>
</html>