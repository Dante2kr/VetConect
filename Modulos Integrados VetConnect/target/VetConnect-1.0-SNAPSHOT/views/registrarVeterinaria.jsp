<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Registrar Veterinaria</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>

<body class="bg-light">

<div class="container mt-5">

<div class="card shadow">

<div class="card-body">

<h2 class="text-success mb-4">

Registrar Veterinaria

</h2>

<form action="../VeterinariaServlet" method="POST">

<input class="form-control mb-3" name="nombre" placeholder="Nombre" required>

<input class="form-control mb-3" name="direccion" placeholder="Dirección" required>

<input class="form-control mb-3" name="telefono" placeholder="Teléfono" required>

<input class="form-control mb-3" name="ciudad" placeholder="Ciudad" required>

<select class="form-select mb-4" name="especialidad">

<option>Consulta General</option>
<option>Cirugía</option>
<option>Urgencias</option>
<option>Vacunación</option>
<option>Peluquería</option>

</select>

<button class="btn btn-success w-100">

Guardar Veterinaria

</button>

</form>

</div>

</div>

</div>

</body>

</html>