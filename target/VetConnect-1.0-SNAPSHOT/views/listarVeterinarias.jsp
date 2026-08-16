<%@page import="java.util.List"%>
<%@page import="com.vetconnect.model.Veterinaria"%>
<%@page import="com.vetconnect.service.VeterinariaService"%>

<%
VeterinariaService service = new VeterinariaService();
List<Veterinaria> veterinarias = service.obtenerVeterinarias();
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Veterinarias</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success">

Veterinarias Registradas

</h2>

<table class="table table-bordered table-hover">

<thead class="table-success">

<tr>

<th>ID</th>
<th>Nombre</th>
<th>Dirección</th>
<th>Teléfono</th>
<th>Ciudad</th>
<th>Especialidad</th>

</tr>

</thead>

<tbody>

<%
for(Veterinaria veterinaria : veterinarias){
%>

<tr>

<td><%=veterinaria.getId()%></td>
<td><%=veterinaria.getNombre()%></td>
<td><%=veterinaria.getDireccion()%></td>
<td><%=veterinaria.getTelefono()%></td>
<td><%=veterinaria.getCiudad()%></td>
<td><%=veterinaria.getEspecialidad()%></td>

</tr>

<%
}
%>

</tbody>

</table>

<a href="registrarVeterinaria.jsp" class="btn btn-success">

Registrar otra veterinaria

</a>

</div>

</div>

</div>

</body>

</html>