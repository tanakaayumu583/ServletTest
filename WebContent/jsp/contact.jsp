<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.html"%>

<form action="../servlet/Contact" method="post">
<p>氏名<span style="color:red;">*必須</span></p>
<p><input type="text" name="name" required></p>
<p>会社</p>
<p><input type="text" name="company" ></p>
<p>メールアドレス<span style="color:red;">*必須</span></p>
<p><input type="text" name="mail" required></p>
<p>お問い合わせ内容 <span style="color:red;">*必須</span></p>
<p><textarea name="inquiry" cols="30" rows="5" required>内容</textarea></p>
<p>メルマガ種類</p>
<p><input type="checkbox" name="general" >総合案内</p>
<p><input type="checkbox" name="seminar" >セミナー案内</p>
<p><input type="checkbox" name="recruit" >求人採用情報</p>
<p>資料請求を希望しますか</p>
<input type="radio" name="document" value="true" checked>Yes
<input type="radio" name="document" value="false" >No

<p><input type="submit" value="確定"></p>

<%@include file="../footer.html"%>