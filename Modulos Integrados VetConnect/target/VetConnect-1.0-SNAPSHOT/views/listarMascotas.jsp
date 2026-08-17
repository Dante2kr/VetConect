<%@page import="java.util.List"%>
<%@page import="com.vetconnect.model.Mascota"%>
<%@page import="com.vetconnect.service.MascotaService"%>

<%

MascotaService service = new MascotaService();

List<Mascota> mascotas = service.obtenerMascotas();

%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Mascotas</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2 class="text-success">

Listado de Mascotas

</h2>

<table class="table table-bordered">

<tr>

<th>ID</th>

<th>Nombre</th>

<th>Especie</th>

<th>Raza</th>

<th>Edad</th>

<th>Sexo</th>

<th>Peso</th>

<th>Propietario</th>

</tr>

<%

for(Mascota mascota : mascotas){

%>

<tr>

<td><%=mascota.getId()%></td>

<td><%=mascota.getNombre()%></td>

<td><%=mascota.getEspecie()%></td>

<td><%=mascota.getRaza()%></td>

<td><%=mascota.getEdad()%></td>

<td><%=mascota.getSexo()%></td>

<td><%=mascota.getPeso()%></td>

<td><%=mascota.getPropietario()%></td>

</tr>

<%

}

%>

</table>

</div>

</body>

</html>