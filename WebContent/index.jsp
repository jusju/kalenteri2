<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.DecimalFormat" %>
<html>
<head>
<title>Kalenteri: kirjautuminen</title>
</head>
<body>

<h1>Kalenteri: kirjautuminen</h1>
<p>
<a href="Kontrolleri">Kalenterit</a>
<hr>
<p>
Sivulla on käyty näin monta kertaa:
<p id="hits"></p>
<script>
	let hitamount = 0;
	
	fetch('http://localhost:8080/kalenteri2/HitsServlet')
  	.then(response => response.json())
  	.then(data => document.getElementById("hits").innerHTML = data.hits);
	

</script>
<!-- 
	document.getElementById("hits").innerHTML = hitamount;
 -->

</body>

<p>
<table border="1">
<form action="Kontrolleri">
  	<tr>
  		<td>
  			Käyttäjätunnus:  
  		</td>
  		<td>
  			<input type="text"  name="kayttajatunnus"> (jusju)
   		</td>
	</tr>
  	<tr>
  		<td>
  			Salasana:  
  		</td>
  		<td>
  		  	<input type="password"  name="salasana"> (no se yleisin)
   		</td>
	</tr>
	<tr>
   		<td>
   		
  		</td>
  		<td>
			<input type="submit" name="action" value="Kirjaudu"/>
  	  
  		</td>
  		

	</tr>
</form>
</table>


</body>
</html>
