<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inicio de sesión</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body class="bg-light">

<div class="container-fluid">
    <div class="row vh-100">

        <!-- COLUMNA IZQUIERDA CON IMAGEN -->
        <div class="col-md-6 d-none d-md-block p-0">
            <img src="<%= request.getContextPath() %>/images/imgFondoLogin.jpg" 
                 class="img-fluid w-100 h-100" 
                 style="object-fit: cover;" 
                 alt="Fondo Login">
        </div>

        <!-- COLUMNA DERECHA LOGIN -->
        <div class="col-md-6 d-flex justify-content-center align-items-center">
            <div class="w-75">

                <h2 class="fw-bold text-center mb-3">EVENTOS PERÚ</h2>
                <h4 class="fw-semibold text-center mb-2">Inicio de sesión</h4>
                <p class="text-center text-muted">
                    Sistema de gestión de eventos y servicios
                </p>

              

                <!-- FORMULARIO -->
                <form action="<%= request.getContextPath() %>/EmpleadoController?action=login" method="post">

                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="username" name="username" placeholder="Correo">
                        <label for="username">Correo</label>
                    </div>

                    <div class="form-floating mb-3">
                        <input type="password" class="form-control" id="password" name="password" placeholder="Contraseña">
                        <label for="password">Contraseña</label>
                    </div>

                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe" value="true">
                        <label class="form-check-label" for="rememberMe">
                            Mantener sesión iniciada
                        </label>
                    </div>

                    <button type="submit" class="btn btn-danger w-100 mb-2">
                        Continuar
                    </button>

                    <button type="button" class="btn btn-secondary w-100"
                            onclick="window.location.href='index.jsp'">
                        Atrás
                    </button>

                </form>

                <div class="text-center mt-3">
                    <a href="#" class="text-decoration-none text-danger">
                        ¿Olvidaste tu contraseña?
                    </a>
                </div>

            </div>
        </div>

    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
