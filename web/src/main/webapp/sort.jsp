<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
List<Integer> numList = new ArrayList<>();
numList.add(10);
numList.add(5);
numList.add(21);

for(int i=0; i<numList.size(); i++){
	for(int j=i+1; j<numList.size(); j++){
		if(numList.get(i)>numList.get(j)){
			int tmp = numList.get(i);
			numList.set(i, numList.get(j));
			numList.set(j,tmp);
		}
	}
}
%>
<table border="1">
<%
for(int i=0; i<numList.size(); i++){
%>
<tr>
<td><%= numList.get(i) %></td>
</tr>
<%
}
%>
</table>
<%
List<Map<String, Integer>> mapList = new ArrayList<>();
Map<String, Integer> map = new HashMap<>();
map.put("age", 10);
mapList.add(map);
map = new HashMap<>();
map.put("age", 5);
mapList.add(map);
map = new HashMap<>();
map.put("age", 21);
mapList.add(map);

for (int i = 0; i < mapList.size(); i++) {
    for (int j = i + 1; j < mapList.size(); j++) {
        int age1 = mapList.get(i).get("age");
        int age2 = mapList.get(j).get("age");
        if (age1 > age2) {
            Map<String, Integer> tmp = mapList.get(i);
            mapList.set(i, mapList.get(j));
            mapList.set(j, tmp);
        }
    }
}
%>
<table border="1">
<%
for(int i=0; i<mapList.size(); i++){
%>
<tr>
<td><%= mapList.get(i) %></td>
</tr>
<%
}
%>
</table>
<%



/*for(int i=0; i<numList.size(); i++){
	for(int j=i+1; j<numList.size(); j++){
		if(numList.get(i)>numList.get(j)){
			int tmp = numList.get(i);
			numList.set(i, numList.get(j));
			numList.set(j,tmp);
			*/

%>
</body>
</html>