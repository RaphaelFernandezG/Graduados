<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.util.ArrayList"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="graduado.model.GraduadoDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="graDao" class="graduado.model.GraduadoDao"
		scope="request"></jsp:useBean>
<table>
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Cedula</th>
						<th>Fecha de Grado</th>
						<th>Correo</th>
					</tr>
				</thead>

				<tbody>
				<% response.setContentType("application/vnd.ms-excel");
				response.setHeader("Content-Disposition", "inline; filename=graduados.xls");%>
				<!--  ArrayList<GraduadoDao> graduados = (ArrayList<GraduadoDao>) session.getAttribute("graduado"); %>-->
				
				
					<c:forEach var="n" items="${graDao.list()}">					
						<tr>
							<td><c:out value="${n.nombre}" /></td>
							<td><c:out value="${n.numdocum}" /></td>
							<td><c:out value="${n.fechagrad}" /></td>
							<td><c:out value="${n.email}" /></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

</body>
</html>