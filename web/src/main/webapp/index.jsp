<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KD </title>
<link rel = "icon" type="image/x-cion" href="<%=root %>/images/favicon.ico">
</head>
<body>
<jsp:include page="/include/header.jsp"/>
홈페이지
<%=root %>
</body>
</html>
<!-- 3번째 줄 include폴더에 있는 common에서 받아오고 -->
<!-- 12번째 줄도 마찬가지로 include에 있는 header에서 받아옴으로써 root라는 변수를 사용할 수 있게 됨.
	그래서 header에 있는 a링크를 사용할 수 있는 거임. 만일 12번째 줄이 없다면 홈페이지를 눌렀을 때 링크가 사라지게 됨. -->