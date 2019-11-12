<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*, com.pildorasinformaticas.productos.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.cabecera{border-bottom:solid #F00 1px;}
</style>

</head>
<%
	List<Productos> productos=(List<Productos>)request.getAttribute("LISTAPRODUCTOS");
%>
<body>

	<table>
	<tr>
	
	<th class="cabecera">Codigo Articulo</td>
	<th class="cabecera">Seccion</td>
	<th class="cabecera">Nombre Articulo</td>
	<th class="cabecera">Fecha</td>
	<th class="cabecera">Precio</td>
	<th class="cabecera">Importado</td>
	<th class="cabecera">Pais de Origen</td>
	
	</tr>
	
	<% for(Productos tempProd: productos) { %>
	
	<tr>
	
	<td><%=tempProd.getcArt() %></td>
	<td><%=tempProd.getSeccion() %></td>
	<td><%=tempProd.getnArt() %></td>
	<td><%=tempProd.getFecha() %></td>
	<td><%=tempProd.getPrecio() %></td>
	<td><%=tempProd.getImportado() %></td>
	<td><%=tempProd.getpOrig() %></td>
	
	</tr>
	
	<%} %>
		
	</table>

</body>
</html>