<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Login de Cliente</title>

    <!-- BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body class="bg-light d-flex flex-column min-vh-100">

    <!-- HEADER -->
    <header class="bg-dark text-white py-3 px-4 d-flex justify-content-between align-items-center">
        <h1 class="h4 m-0">EVENTOS PERU</h1>
        <nav>
            <ul class="nav">
                <li class="nav-item">
                    <a class="nav-link text-light" href="vRegisterCliente.jsp">¿No tienes cuenta? Regístrate aquí</a>
                </li>
            </ul>
        </nav>
    </header>

    <!-- CONTENEDOR CENTRAL -->
    <div class="container d-flex justify-content-center align-items-center my-5 flex-grow-1">
        <div class="row w-100 shadow rounded overflow-hidden bg-white" style="max-width: 1000px;">

            <!-- LADO IZQUIERDO -->
            <div class="col-md-4 d-flex flex-column justify-content-center align-items-center text-white p-4"
                 style="background: linear-gradient(135deg, #feda75, #fa7e1e, #d62976, #962fbf, #4f5bd5);
">
                <h2 class="text-center fw-semibold">Bienvenido de nuevo</h2>
                <p class="text-center small">Accede a tus eventos y gestiona tus reservas de manera segura.</p>
                <img src="<%= request.getContextPath()%>/images/fiesta.png"
                     class="img-fluid mt-3" alt="Eventos">
            </div>

            <!-- LADO DERECHO -->
            <div class="col-md-8 p-5">

                <!-- TITULO -->
                <h3 class="text-center fw-semibold mb-4"
                    style="background: linear-gradient(90deg,#476e9e,#304c89);
                    -webkit-background-clip: text; -webkit-text-fill-color: transparent;">
                    INICIO DE SESIÓN EVENTOS PERÚ
                </h3>

                <!-- FORMULARIO -->
                <form action="<%= request.getContextPath()%>/ClienteController?action=login" method="post"
                      class="needs-validation">

                    <div class="mb-3">
                        <label class="form-label">Correo electrónico</label>
                        <input type="email" name="email" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label class="form-label">Contraseña</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>

                    <div class="form-check mb-3">
                        <input class="form-check-input" type="checkbox" value="true" id="rememberMe" name="rememberMe">
                        <label class="form-check-label" for="rememberMe">
                            Mantener sesión iniciada
                        </label>
                    </div>

                    <button type="submit" class="btn w-100 text-white" style="background-color:#304c89;">
                        Iniciar sesión
                    </button>

                    <%-- Error de login --%>
                    <%
                        String error = request.getParameter("error");
                        if (error != null) {
                    %>
                    <div class="alert alert-danger mt-3">
                        ⚠ Usuario / contraseña incorrectos o no está verificado.
                    </div>
                    <% } %>

                </form>

            </div>
        </div>
    </div>

    
    
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <%
            String add = request.getParameter("login");
        %>

        <% if ("ok".equals(add)) {%>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Sesion exitosa',
                text: 'Entrando al sistema.',
                confirmButtonColor: '#3085d6',
                timer: 2000, // ⏳ 2 segundos
                timerProgressBar: true
            }).then(() => {
                window.location.href = '<%= request.getContextPath()%>/vistaCliente/vEventos.jsp';
            });
        </script>
        <% } %>

        <% if ("error".equals(add)) {%>
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error al iniciar sesion',
                text: 'No se pudo completar el logueo.',
                confirmButtonColor: '#d33',
                timer: 2500, // ⏳ 2.5 segundos
                timerProgressBar: true
            }).then(() => {
                window.location.href = '<%= request.getContextPath()%>/vistaCliente/vLoginCliente.jsp';
            });
        </script>
        <% }%>



</body>
</html>
