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
<%
String uiId = request.getParameter("uiId");
if(uiId != null && !uiId.isEmpty()){
	String uiPwd = request.getParameter("uiPwd");
	String uiName = request.getParameter("uiName");
	
	Connection con = DBCon.getcon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO USER_INFO (UI_ID, UI_PWD, UI_NAME)";
	sql +="VALUES ('"+ uiId +"','" + uiPwd + "','" + uiName+"')";
	int result = stmt.executeUpdate(sql);
	if( result ==1){

%>
<script>
alert("글 작성 완료");
location.href= "/web/user/user_list.jsp";
</script>
<%
}
}
%>
<form>
<table border = "1">
<tr>
			<th>아이디</th>
            <td><input type="text" id="uiId" name="uiId"></td>
        </tr>
        <tr>
            <th>비밀번호</th>
            <td><textarea id="uiPwd" name="uiPwd" style="resize:none" cols="30" rows="15"></textarea></td>
        </tr>
        <tr>
            <th>이름</th>
            <td><input type="text" id="uiName" name="uiName"></td>
        </tr>
        <tr>
            <th colspan="2"><button>등록</button></th>
        </tr>
</table>
</form>
</body>
</html>