<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>VetConnect</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="icon" type="image/png" href="img/logo.png">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <!-- Nuestro CSS -->
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

    <jsp:include page="components/navbar.jsp"/>
    <jsp:include page="components/hero.jsp"/>
    <jsp:include page="components/servicios.jsp"/>
    <jsp:include page="components/beneficios.jsp"/>
    <jsp:include page="components/veterinarias.jsp"/>
    <jsp:include page="components/testimonios.jsp"/>
    <jsp:include page="components/contacto.jsp"/>
    <jsp:include page="components/footer.jsp"/>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>