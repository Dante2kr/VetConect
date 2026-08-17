<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registrar Mascota</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container mt-5">

    <div class="card shadow">

        <div class="card-body">

            <h2 class="text-success mb-4">
                Registrar Mascota
            </h2>

            <form action="../MascotaServlet" method="POST">

                <input class="form-control mb-3"
                       name="nombre"
                       placeholder="Nombre de la mascota"
                       required>

                <input class="form-control mb-3"
                       name="especie"
                       placeholder="Especie"
                       required>

                <input class="form-control mb-3"
                       name="raza"
                       placeholder="Raza"
                       required>

                <input class="form-control mb-3"
                       type="number"
                       name="edad"
                       placeholder="Edad"
                       required>

                <input class="form-control mb-3"
                       name="sexo"
                       placeholder="Sexo"
                       required>

                <input class="form-control mb-3"
                       type="number"
                       step="0.1"
                       name="peso"
                       placeholder="Peso (kg)"
                       required>

                <input class="form-control mb-4"
                       name="propietario"
                       placeholder="Correo del propietario"
                       required>

                <button class="btn btn-success w-100">
                    Registrar Mascota
                </button>

            </form>

        </div>

    </div>

</div>

</body>
</html>