<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.vetconnect.model.Usuario"%>

<%
    Usuario usuario = (Usuario) session.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="UTF-8">
    <title>Dashboard | VetConnect</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <style>

        body{
            background:#f4f6f9;
        }

        .sidebar{
            min-height:100vh;
            background:#198754;
            color:white;
        }

        .sidebar h3{
            font-weight:bold;
        }

        .sidebar a{
            color:white;
            text-decoration:none;
            display:block;
            padding:12px;
            border-radius:8px;
            margin-bottom:8px;
            transition:.3s;
        }

        .sidebar a:hover{
            background:rgba(255,255,255,.2);
        }

        .card-opcion{
            transition:.3s;
            border:none;
        }

        .card-opcion:hover{
            transform:translateY(-6px);
        }

        .icono{
            font-size:55px;
        }

    </style>

</head>

<body>

<div class="container-fluid">

<div class="row">

<!-- MENU -->

<div class="col-md-3 col-lg-2 sidebar p-4">

<h3 class="text-center">

🐾 VetConnect

</h3>

<hr>

<a href="dashboard.jsp">

<i class="bi bi-house-door-fill"></i>

Inicio

</a>

<a href="registrarMascota.jsp">

<i class="bi bi-heart-fill"></i>

Registrar Mascota

</a>

<a href="listarMascotas.jsp">

<i class="bi bi-list"></i>

Ver Mascotas

</a>

<a href="registrarCita.jsp">

<i class="bi bi-calendar-plus"></i>

Registrar Cita

</a>

<a href="listarCitas.jsp">

<i class="bi bi-calendar-check"></i>

Ver Citas

</a>

<a href="registrarVeterinaria.jsp">

<i class="bi bi-hospital"></i>

Registrar Veterinaria

</a>

<a href="listarVeterinarias.jsp">

<i class="bi bi-buildings"></i>

Ver Veterinarias

</a>

<a href="registrarServicio.jsp">

<i class="bi bi-bandaid-fill"></i>

Registrar Servicio

</a>

<a href="listarServicios.jsp">

<i class="bi bi-clipboard2-pulse-fill"></i>

Ver Servicios

</a>

<hr>

<a href="../LogoutServlet">

<i class="bi bi-box-arrow-right"></i>

Cerrar sesión

</a>

</div>

<!-- CONTENIDO -->

<div class="col-md-9 col-lg-10 p-4">

<h2 class="mb-4">

Bienvenido,

<span class="text-success">

<%=usuario.getNombre()%>

</span>

👋

</h2>

<div class="row">

<!-- Mascotas -->

<div class="col-md-3 mb-4">

<div class="card shadow card-opcion">

<div class="card-body text-center">

<div class="icono">🐶</div>

<h5>Mascotas</h5>

<p>

Registrar mascotas.

</p>

<a href="registrarMascota.jsp"

class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

<!-- Citas -->

<div class="col-md-3 mb-4">

<div class="card shadow card-opcion">

<div class="card-body text-center">

<div class="icono">📅</div>

<h5>Citas</h5>

<p>

Agendar citas.

</p>

<a href="registrarCita.jsp"

class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

<!-- Veterinarias -->

<div class="col-md-3 mb-4">

<div class="card shadow card-opcion">

<div class="card-body text-center">

<div class="icono">🏥</div>

<h5>Veterinarias</h5>

<p>

Registrar veterinarias.

</p>

<a href="registrarVeterinaria.jsp"

class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

<!-- Servicios -->

<div class="col-md-3 mb-4">

<div class="card shadow card-opcion">

<div class="card-body text-center">

<div class="icono">💉</div>

<h5>Servicios</h5>

<p>

Administrar servicios.

</p>

<a href="registrarServicio.jsp"

class="btn btn-success">

Ingresar

</a>

</div>

</div>

</div>

</div>

<hr>

<div class="card shadow">

<div class="card-header bg-success text-white">

<h5 class="mb-0">

Información del Usuario

</h5>

</div>

<div class="card-body">

<table class="table table-striped">

<tr>

<th>ID</th>

<td><%=usuario.getId()%></td>

</tr>

<tr>

<th>Nombre</th>

<td><%=usuario.getNombre()%></td>

</tr>

<tr>

<th>Apellido</th>

<td><%=usuario.getApellido()%></td>

</tr>

<tr>

<th>Correo</th>

<td><%=usuario.getCorreo()%></td>

</tr>

<tr>

<th>Teléfono</th>

<td><%=usuario.getTelefono()%></td>

</tr>

</table>

</div>

</div>

</div>

</div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>