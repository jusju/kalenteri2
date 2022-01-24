<%@page import="dao.ViikonpaivaDAO"%>
<%@page import="kohdeluokat.Aikavaraus"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lisää tapahtuma</title>
</head>
<body>
<h1>Lisää tapahtuma</h1>
<form action="LisaysServlet" method="get">

<table>
<tr>
<td>Aloitusaika</td>
<td><input type="text" name="aloitusaika" length="10"></td>
</tr>

<tr>
<td>Lopetusaika</td>
<td><input type="text" name="lopetusaika" length="10"></td>
</tr>

<tr>
<td>Aihe ja paikka (esim. O2 @ 5009)</td>
<td><input type="text" name="aihe_ja_paikka" length="10"></td>
</tr>

<tr>
<td></td>
<td><input type="submit" name="Talleta" value="Talleta"></td>
</tr>


</table>
</form>





</body>
</html>