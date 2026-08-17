<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <title>Iniciar Sesión | VetConnect</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <link rel="stylesheet" href="../css/style.css">

</head>

<body class="bg-light">

<div class="container">

    <div class="row justify-content-center align-items-center vh-100">

        <div class="col-lg-5">

            <div class="card shadow border-0">

                <div class="card-body p-5">

                    <div class="text-center mb-4">

                        <img src="../img/logo.png" width="90">

                        <h2 class="text-success mt-3">
                            Bienvenido
                        </h2>

                        <p class="text-muted">
                            Inicia sesión para continuar.
                        </p>

                    </div>

                    <form action="../LoginServlet" method="POST">

                        <div class="mb-3">

                            <label class="form-label">
                                Correo electrónico
                            </label>

                            <input
                                type="email"
                                class="form-control"
                                name="correo"
                                required>

                        </div>

                        <div class="mb-4">

                            <label class="form-label">
                                Contraseña
                            </label>

                            <input
                                type="password"
                                class="form-control"
                                name="contraseña"
                                required>

                        </div>

                        <button
                            class="btn btn-success w-100">

                            Iniciar sesión

                        </button>

                    </form>

                    <div class="text-center mt-4">

                        ¿No tienes cuenta?

                        <a href="registro.jsp">

                            Regístrate aquí

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

</body>

</html>