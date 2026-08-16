<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Registrar Servicio</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success">

Registrar Servicio

</h2>

<form action="../ServicioServlet" method="POST">

<input
class="form-control mb-3"
name="nombre"
placeholder="Nombre del servicio"
required>

<textarea
class="form-control mb-3"
name="descripcion"
placeholder="Descripción"
required></textarea>

<input
type="number"
step="0.01"
class="form-control mb-4"
name="precio"
placeholder="Precio"
required>

<button
class="btn btn-success w-100">

Guardar

</button>

</form>

</div>

</div>

</div>

</body>

</html>