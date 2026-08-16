<%@page import="java.util.List"%>
<%@page import="com.vetconnect.model.Servicio"%>
<%@page import="com.vetconnect.service.ServicioService"%>

<%
ServicioService service = new ServicioService();
List<Servicio> servicios = service.obtenerServicios();
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Servicios</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success">

Servicios

</h2>

<table class="table table-bordered">

<thead class="table-success">

<tr>

<th>ID</th>
<th>Nombre</th>
<th>Descripción</th>
<th>Precio</th>

</tr>

</thead>

<tbody>

<%

for(Servicio servicio : servicios){

%>

<tr>

<td><%=servicio.getId()%></td>

<td><%=servicio.getNombre()%></td>

<td><%=servicio.getDescripcion()%></td>

<td>$ <%=servicio.getPrecio()%></td>

</tr>

<%

}

%>

</tbody>

</table>

<a href="registrarServicio.jsp"
class="btn btn-success">

Registrar otro

</a>

</div>

</div>

</div>

</body>

</html>