<%@page import="dao.ViikonpaivaDAO"%>
<%@page import="kohdeluokat.Aikavaraus"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Viikko</title>
</head>
<body>

	<%
		String kenenkalenteri = request.getParameter("kenenkalenteri");
		out.println("<h1>" + kenenkalenteri + " lukujärjestys</h1>");
		ViikonpaivaDAO dao = new ViikonpaivaDAO();
		ArrayList<Aikavaraus> maanantainVaraukset = dao.haeAikaVaraukset(kenenkalenteri, "Maanantai");
		ArrayList<Aikavaraus> tiistainVaraukset = dao.haeAikaVaraukset(kenenkalenteri, "Tiistai");
		ArrayList<Aikavaraus> keskiviikonVaraukset = dao.haeAikaVaraukset(kenenkalenteri, "Keskiviikko");
		ArrayList<Aikavaraus> torstainVaraukset = dao.haeAikaVaraukset(kenenkalenteri, "Torstai");
		ArrayList<Aikavaraus> perjantainVaraukset = dao.haeAikaVaraukset(kenenkalenteri, "Perjantai");

		
		%>
		<table border="1">
		<tr>
			<td></td>
			<td>Maanantai</td>
			<td>Tiistai</td>
			<td>Keskiviikko</td>
			<td>Torstai</td>
			<td>Perjantai</td>			
		</tr>
		<tr>
			<td>08:00-08:45</td>
			<td>
			<%
			if(maanantainVaraukset.size() > 0) {
				for(int i=0; i < maanantainVaraukset.size(); i++) {
					if(maanantainVaraukset.get(i).getAloitusAika().equals(("8:00"))) {
						out.println("<b>" + maanantainVaraukset.get(i).getAihe() + " @" + maanantainVaraukset.get(i).getSijainti() + "</b> " + 
						"<a href=\"/kalenteri2/PoistoServlet?id=" + maanantainVaraukset.get(i).getId() + "\">POISTA</a>");
					}
				}
			}
			
			%>
			</td>
			<td>
			<%
			if(tiistainVaraukset.size() > 0) {
				for(int i=0; i < tiistainVaraukset.size(); i++) {
					if(tiistainVaraukset.get(i).getAloitusAika().equals(("8:00"))) {
						out.println("<b>" + tiistainVaraukset.get(i).getAihe() + " @" + tiistainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + tiistainVaraukset.get(i).getId() + "\">POISTA</a>");
					}
				}
			}
			
			%>
			
			</td>
			<td>
			<%
			if(keskiviikonVaraukset.size() > 0) {
				for(int i=0; i < keskiviikonVaraukset.size(); i++) {
					if(keskiviikonVaraukset.get(i).getAloitusAika().equals(("8:00"))) {
						out.println("<b>" + keskiviikonVaraukset.get(i).getAihe() + " @" + keskiviikonVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + keskiviikonVaraukset.get(i).getId() + "\">POISTA</a>");
					}
				}
			}
			
			%>
			
			</td>
			<td>
			<% 
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if(torstainVaraukset.get(i).getAloitusAika().equals(("8:00"))) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");
					}
				}
			}
			
			%>
			</td>
			<td></td>
		</tr>
		<tr>
			<td>09:00-09:45</td>
			<td>
			<%
			if(maanantainVaraukset.size() > 0) {
				for(int i=0; i < maanantainVaraukset.size(); i++) {
					if((maanantainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							maanantainVaraukset.get(i).getAloitusAika().equals("9:00")) && 
									maanantainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + maanantainVaraukset.get(i).getAihe() + " @" + maanantainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + maanantainVaraukset.get(i).getId() + "\">POISTA</a>");		
					}
	
				}
			}
			
			%>
			
			
			</td>
			<td>
			<%
			if(tiistainVaraukset.size() > 0) {
				for(int i=0; i < tiistainVaraukset.size(); i++) {
					if((tiistainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							tiistainVaraukset.get(i).getAloitusAika().equals("9:00")) && 
							tiistainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + tiistainVaraukset.get(i).getAihe() + " @" + tiistainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + tiistainVaraukset.get(i).getId() + "\">POISTA</a>");	
					}
	
				}
			}
			
			%>
			
			
			
			</td>
			<td>
			
			<%
			if(keskiviikonVaraukset.size() > 0) {
				for(int i=0; i < keskiviikonVaraukset.size(); i++) {
					if((keskiviikonVaraukset.get(i).getAloitusAika().equals("8:00") || 
							keskiviikonVaraukset.get(i).getAloitusAika().equals("9:00")) && 
							keskiviikonVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + keskiviikonVaraukset.get(i).getAihe() + " @" + keskiviikonVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + keskiviikonVaraukset.get(i).getId() + "\">POISTA</a>");							
					}
	
				}
			}
			
			%>		
			
			
			
			</td>
			<td>
			
			<%
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if((torstainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							torstainVaraukset.get(i).getAloitusAika().equals("9:00")) && 
							torstainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");	
					}
	
				}
			}
			 %>
			
			
			</td>
			<td></td>
		</tr>
		<tr>
			<td>10:00-10:45</td>
			<td>
			<%
			if(maanantainVaraukset.size() > 0) {
				for(int i=0; i < maanantainVaraukset.size(); i++) {
					if((maanantainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							maanantainVaraukset.get(i).getAloitusAika().equals("9:00") ||
							maanantainVaraukset.get(i).getAloitusAika().equals("10:00")) && 
									maanantainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + maanantainVaraukset.get(i).getAihe() + " @" + maanantainVaraukset.get(i).getSijainti() + "</b> " +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + maanantainVaraukset.get(i).getId() + "\">POISTA</a>");			
					}
	
				}
			}
			
			%>
			
			</td>
			<td>
			<%
			if(tiistainVaraukset.size() > 0) {
				for(int i=0; i < tiistainVaraukset.size(); i++) {
					if((tiistainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							tiistainVaraukset.get(i).getAloitusAika().equals("9:00") ||
							tiistainVaraukset.get(i).getAloitusAika().equals("10:00")) && 
							tiistainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + tiistainVaraukset.get(i).getAihe() + " @" + tiistainVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + tiistainVaraukset.get(i).getId() + "\">POISTA</a>");	
					}
	
				}
			}
			
			%>
			
			</td>
			<td>
			
			<%
			if(keskiviikonVaraukset.size() > 0) {
				for(int i=0; i < keskiviikonVaraukset.size(); i++) {
					if((keskiviikonVaraukset.get(i).getAloitusAika().equals("8:00") || 
							keskiviikonVaraukset.get(i).getAloitusAika().equals("9:00") ||
							keskiviikonVaraukset.get(i).getAloitusAika().equals("10:00")) && 
							keskiviikonVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + keskiviikonVaraukset.get(i).getAihe() + " @" + keskiviikonVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + keskiviikonVaraukset.get(i).getId() + "\">POISTA</a>");	
					}
	
				}
			}
			
			%>		
			
			
			</td>
			<td>
			
			<%
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if((torstainVaraukset.get(i).getAloitusAika().equals("8:00") || 
							torstainVaraukset.get(i).getAloitusAika().equals("9:00") ||
							torstainVaraukset.get(i).getAloitusAika().equals("10:00")) && 
							torstainVaraukset.get(i).getLopetusAika().equals("10:45")) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");							
					}
	
				}
			}
			
			%>				
			
			
			</td>
			<td></td>
		</tr>
		<tr>
			<td>11:00-11:45</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>12:00-12:45</td>
			<td>
			
			<%
			if(maanantainVaraukset.size() > 0) {
				for(int i=0; i < maanantainVaraukset.size(); i++) {
					if((maanantainVaraukset.get(i).getAloitusAika().equals("12:00") && 
							maanantainVaraukset.get(i).getLopetusAika().equals("12:45"))) {
							out.println("<b>" + maanantainVaraukset.get(i).getAihe() + " @" + maanantainVaraukset.get(i).getSijainti() + "</b>" +
									"<a href=\"/kalenteri2/PoistoServlet?id=" + maanantainVaraukset.get(i).getId() + "\">POISTA</a>");								
					}
	
				}
			}
			
			%>	
			
			</td>
			<td></td>
			<td>
			<%
			if(keskiviikonVaraukset.size() > 0) {
				for(int i=0; i < keskiviikonVaraukset.size(); i++) {
					if((keskiviikonVaraukset.get(i).getAloitusAika().equals("12:00") && 
							keskiviikonVaraukset.get(i).getLopetusAika().equals("13:45"))) {
							out.println("<b>" + keskiviikonVaraukset.get(i).getAihe() + " @" + keskiviikonVaraukset.get(i).getSijainti() + "</b>" +
									"<a href=\"/kalenteri2/PoistoServlet?id=" + keskiviikonVaraukset.get(i).getId() + "\">POISTA</a>");		
					}
	
				}
			}
			
			%>		

			</td>
			
			<td>
			<%
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if((torstainVaraukset.get(i).getAloitusAika().equals("12:00")  && 
							torstainVaraukset.get(i).getLopetusAika().equals("14:45"))) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");		
					}
	
				}
			}
			
			%>	
			</td>
			<td></td>
		</tr>
		<tr>
			<td>13:00-13:45</td>
			<td></td>
			<td></td>
			<td>
			<%
			if(keskiviikonVaraukset.size() > 0) {
				for(int i=0; i < keskiviikonVaraukset.size(); i++) {
					if((keskiviikonVaraukset.get(i).getAloitusAika().equals("12:00") && 
							keskiviikonVaraukset.get(i).getLopetusAika().equals("13:45"))) {
							out.println("<b>" + keskiviikonVaraukset.get(i).getAihe() + " @" + keskiviikonVaraukset.get(i).getSijainti() + "</b>" +
									"<a href=\"/kalenteri2/PoistoServlet?id=" + keskiviikonVaraukset.get(i).getId() + "\">POISTA</a>");		
					}
	
				}
			}
			
			%>	
			
			
			</td>
			<td>
			<%
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if((torstainVaraukset.get(i).getAloitusAika().equals("12:00")  && 
							torstainVaraukset.get(i).getLopetusAika().equals("14:45"))) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");
					}
	
				}
			}
			
			%>
			
			</td>
			<td></td>
		</tr>
		<tr>
			<td>14:00-14:45</td>
			<td></td>
			<td></td>
			<td></td>
			<td>
			<%
			if(torstainVaraukset.size() > 0) {
				for(int i=0; i < torstainVaraukset.size(); i++) {
					if((torstainVaraukset.get(i).getAloitusAika().equals("12:00")  && 
							torstainVaraukset.get(i).getLopetusAika().equals("14:45"))) {
						out.println("<b>" + torstainVaraukset.get(i).getAihe() + " @" + torstainVaraukset.get(i).getSijainti() + "</b>" +
								"<a href=\"/kalenteri2/PoistoServlet?id=" + torstainVaraukset.get(i).getId() + "\">POISTA</a>");	
					}
	
				}
			}
			
			%>
			
			
			</td>
			<td></td>			
		</tr>
		<tr>
			<td>15:00-15:45</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>16:00-16:45</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>16:45-17:30</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>17:40-18:20</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>18:20-19:00</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>19:10-19:50</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>19:50-20:30</td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>


		
		</table>
<a href="lisaatapahtuma.jsp">Lisää tapahtuma</a>		
		
</body>
</html>