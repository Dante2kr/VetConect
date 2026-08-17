<%@page import="java.util.List"%>
<%@page import="com.vetconnect.model.Cita"%>
<%@page import="com.vetconnect.service.CitaService"%>

<%

CitaService service = new CitaService();

List<Cita> citas = service.obtenerCitas();

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Listado de Citas</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success">

Listado de Citas

</h2>

<table class="table table-bordered table-hover">

<thead class="table-success">

<tr>

<th>ID</th>

<th>Fecha</th>

<th>Hora</th>

<th>Mascota</th>

<th>Veterinaria</th>

<th>Servicio</th>

<th>Estado</th>

</tr>

</thead>

<tbody>

<%

for(Cita cita : citas){

%>

<tr>

<td><%=cita.getId()%></td>

<td><%=cita.getFecha()%></td>

<td><%=cita.getHora()%></td>

<td><%=cita.getMascota()%></td>

<td><%=cita.getVeterinaria()%></td>

<td><%=cita.getServicio()%></td>

<td>

<span class="badge bg-warning text-dark">

<%=cita.getEstado()%>

</span>

</td>

</tr>

<%

}

%>

</tbody>

</table>

<a href="registrarCita.jsp"
class="btn btn-success">

Registrar otra cita

</a>

</div>

</div>

</div>

</body>

</html>