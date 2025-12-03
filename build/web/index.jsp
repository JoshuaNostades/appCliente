<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eventos Perú</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f5f5f5, #e0e0e0);

            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
        }

        .card-main {
            background: rgba(255,255,255,0.95);
            border-radius: 20px;
            padding: 40px 30px;
            text-align: center;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            max-width: 400px;
            width: 100%;
        }

        .card-main h2 {
            font-weight: 700;
            margin-bottom: 25px;
            color: #0d6efd;
        }

        .btn-custom {
            border-radius: 50px;
            padding: 10px 25px;
            font-weight: 600;
            transition: transform 0.2s ease;
            width: 100%;
        }

        .btn-custom:hover {
            transform: scale(1.05);
        }

        .btn-login {
            background-color: #198754;
            color: white;
            border: none;
        }

        .btn-login:hover {
            background-color: #157347;
        }

        .btn-register {
            background-color: #0d6efd;
            color: white;
            border: none;
        }

        .btn-register:hover {
            background-color: #0b5ed7;
        }

        .btn-worker {
            background-color: #ffc107;
            color: #212529;
            border: none;
        }

        .btn-worker:hover {
            background-color: #e0a800;
        }

    </style>
</head>
<body>

    <div class="card card-main">
        <h2>Bienvenido a Eventos Perú</h2>
        <p class="mb-4 text-muted">Organiza, descubre y disfruta de los mejores eventos en todo el país.</p>

        <a href="<%= request.getContextPath()%>/vistaCliente/vRegisterCliente.jsp" class="btn btn-register btn-custom mb-3">Registrarse</a>
        <a href="<%= request.getContextPath()%>/vistaCliente/vLoginCliente.jsp" class="btn btn-login btn-custom mb-3">Iniciar sesión</a>
        <a href="<%= request.getContextPath()%>/vistaEmpleado/vLogin.jsp" class="btn btn-worker btn-custom">Sesión trabajador</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
