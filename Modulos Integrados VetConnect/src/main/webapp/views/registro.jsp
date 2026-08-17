<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="es">

<head>

    <meta charset="UTF-8">

    <title>Registro | VetConnect</title>

    <!-- Bootstrap -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <!-- Google Fonts -->

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap"
          rel="stylesheet">

    <!-- CSS -->

    <link rel="stylesheet" href="../css/style.css">

</head>

<body class="bg-light">

<div class="container">

    <div class="row justify-content-center align-items-center vh-100">

        <div class="col-lg-6">

            <div class="card shadow border-0">

                <div class="card-body p-5">

                    <div class="text-center mb-4">

                        <img src="../img/logo.png"
                             width="90">

                        <h2 class="mt-3 text-success">

                            Crear cuenta

                        </h2>

                        <p class="text-muted">

                            Regístrate para comenzar a usar VetConnect.

                        </p>

                    </div>

                    <form action="../RegistroServlet" method="POST">

                        <div class="row">

                            <div class="col-md-6 mb-3">

                                <label class="form-label">

                                    Nombre

                                </label>

                                <input
                                        type="text"
                                        class="form-control"
                                        name="nombre"
                                        required>

                            </div>

                            <div class="col-md-6 mb-3">

                                <label class="form-label">

                                    Apellido

                                </label>

                                <input
                                        type="text"
                                        class="form-control"
                                        name="apellido"
                                        required>

                            </div>

                        </div>

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

                        <div class="mb-3">

                            <label class="form-label">

                                Teléfono

                            </label>

                            <input
                                    type="text"
                                    class="form-control"
                                    name="telefono"
                                    required>

                        </div>

                        <div class="mb-3">

                            <label class="form-label">

                                Contraseña

                            </label>

                            <input
                                    type="password"
                                    class="form-control"
                                    name="contraseña"
                                    required>

                        </div>

                        <div class="mb-4">

                            <label class="form-label">

                                Confirmar contraseña

                            </label>

                            <input
                                    type="password"
                                    class="form-control"
                                    name="confirmar"
                                    required>

                        </div>

                        <button
                                class="btn btn-success w-100">

                            Registrarse

                        </button>

                    </form>

                    <div class="text-center mt-4">

                        ¿Ya tienes cuenta?

                        <a href="login.jsp">

                            Inicia sesión

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>