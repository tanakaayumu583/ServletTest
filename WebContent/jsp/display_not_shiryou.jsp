<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../header.html"%>
<%
String name = request.getParameter("name");
String company = request.getParameter("company");
String mail = request.getParameter("mail");
String inquiry = request.getParameter("inquiry");
String general = request.getParameter("general");
String seminar = request.getParameter("seminar");
String recruit = request.getParameter("recruit");
String document = request.getParameter("document");
boolean exist_1 = false;
boolean exist_2 = false;
%>

<html>
<head>
<title>受信データ</title>
</head>
<body>
	<p>
		お名前は"<%=name%>"さんですね。
	</p>
	<%if(company.length()>0){ %>
	<p>
		会社名は"<%=company%>"ですね。
	</p>
	<%} %>
	<p>
		メールアドレスは"<%=mail%>"ですね。
	</p>
	<p>
		お問い合わせ内容は"<%=inquiry%>"ですね。
	</p>
		<%if((general !=null)||(seminar !=null)||(recruit !=null)){ %>
	<p>
		ご希望のメルマガの種類は"
		<% if(general !=null){ %>総合案内
		<% exist_1=true; } %>
		<% if((seminar !=null)&& (exist_1)){%>,<% } %>
				<% if(seminar !=null){ %>セミナー案内
		<% exist_2=true; } %>
		<% if((recruit != null)&&(exist_2)){%>,<% } %>
				<% if(recruit != null){ %>求人採用情報
		<% } %>"ですね。
	</p>
		<%} %>
	<p>資料請求は希望しませんね</p>
</body>
</html>


<%@include file="../footer.html"%>