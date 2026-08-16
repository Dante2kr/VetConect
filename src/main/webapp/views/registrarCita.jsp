<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Registrar Cita</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success mb-4">

Registrar Cita

</h2>

<form action="../CitaServlet" method="POST">

<div class="mb-3">

<label>Fecha</label>

<input type="date"
class="form-control"
name="fecha"
required>

</div>

<div class="mb-3">

<label>Hora</label>

<input type="time"
class="form-control"
name="hora"
required>

</div>

<div class="mb-3">

<label>Mascota</label>

<input
class="form-control"
name="mascota"
placeholder="Nombre de la mascota"
required>

</div>

<div class="mb-3">

<label>Veterinaria</label>

<input
class="form-control"
name="veterinaria"
placeholder="Nombre de la veterinaria"
required>

</div>

<div class="mb-4">

<label>Servicio</label>

<select
class="form-select"
name="servicio">

<option>Consulta General</option>

<option>Vacunación</option>

<option>Desparasitación</option>

<option>Cirugía</option>

<option>Peluquería</option>

</select>

</div>

<button class="btn btn-success w-100">

Agendar Cita

</button>

</form>

</div>

</div>

</div>

</body>

</html>