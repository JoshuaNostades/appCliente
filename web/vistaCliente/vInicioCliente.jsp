<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Bienvenido - Eventos Perú</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">

    <style>
        body, html {
            height: 100%;
            margin: 0;
            background: #0f0f1f;
            color: #f0f0f5;
            font-family: 'Segoe UI', sans-serif;
        }

        /* Sidebar */
        .sidebar {
            min-height: 100vh;
            background: linear-gradient(180deg, #1f1f3a, #272746);
            padding: 25px 20px;
            box-shadow: 3px 0 10px rgba(0,0,0,0.5);
        }

        .sidebar h4 {
            color: #f5f5f5;
            font-weight: 700;
            text-align: center;
            margin-bottom: 30px;
        }

        .nav-link {
            color: #cdd3f0;
            font-weight: 500;
            border-radius: 8px;
            transition: 0.3s;
        }

        .nav-link:hover {
            background: #4b4b7a;
            color: #fff;
        }

        .main-content {
            padding: 30px 50px;
            flex-grow: 1;
            overflow-x: auto;
        }

        h2 {
            color: #e0e0ff;
        }

        p {
            color: #cfd2f5;
            margin-bottom: 30px;
        }

        /* Cards eventos */
        .events-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 25px;
        }

        .card {
            border-radius: 15px;
            background: linear-gradient(145deg, #1e1e3a, #29295b);
            box-shadow: 0 10px 20px rgba(0,0,0,0.6);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 25px rgba(0,0,0,0.7);
        }

        .card-header {
            background: linear-gradient(90deg, #6a5acd, #00bfff);
            color: #fff;
            font-weight: 600;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            font-size: 1.1rem;
            text-align: center;
        }

        .card-body p {
            color: #d0d4ff;
            font-size: 0.95rem;
        }

        .btn-success {
            background: #00bfff;
            border: none;
        }

        .btn-success:hover {
            background: #0099cc;
        }

        .btn-danger {
            background: #ff4c4c;
            border: none;
        }

        .btn-danger:hover {
            background: #cc0000;
        }
    </style>
</head>
<body class="d-flex vh-100">

    <!-- Sidebar -->
    <div class="sidebar col-md-2">
        <h4>Eventos Perú</h4>
        <ul class="nav flex-column">
            <li class="nav-item mb-2">
                <a href="vInicioCliente.jsp" class="nav-link"><i class="bi bi-house-door me-2"></i>Inicio</a>
            </li>
            <li class="nav-item mb-2">
                <a href="vMisEventos.jsp" class="nav-link"><i class="bi bi-calendar-event me-2"></i>Mis Eventos</a>
            </li>
            <li class="nav-item mb-2">
                <a href="vPerfilCliente.jsp" class="nav-link"><i class="bi bi-person-circle me-2"></i>Mi Perfil</a>
            </li>
            <li class="nav-item mt-4">
                <a href="CerrarSesionServlet" class="btn btn-danger w-100">Cerrar Sesión</a>
            </li>
        </ul>
    </div>

    <!-- Main content -->
    <div class="main-content col-md-10">
        <h2>¡Bienvenido al portal de Eventos!</h2>
        <p>Explora los eventos disponibles y reserva tus actividades favoritas.</p>

        <div class="events-grid">
            <!-- Evento 1 -->
            <div class="card">
                <div class="card-header">Cumpleaños Infantil</div>
                <div class="card-body">
                    <p>Organiza un cumpleaños inolvidable con juegos, pastel y diversión.</p>
                    <a href="#" class="btn btn-success btn-sm">Ver detalles</a>
                </div>
            </div>

            <!-- Evento 2 -->
            <div class="card">
                <div class="card-header">Aniversario</div>
                <div class="card-body">
                    <p>Celebra tu aniversario con un evento romántico y personalizado.</p>
                    <a href="#" class="btn btn-success btn-sm">Ver detalles</a>
                </div>
            </div>

            <!-- Evento 3 -->
            <div class="card">
                <div class="card-header">Matrimonio</div>
                <div class="card-body">
                    <p>Planifica tu boda soñada con todos los servicios incluidos.</p>
                    <a href="#" class="btn btn-success btn-sm">Ver detalles</a>
                </div>
            </div>

            <!-- Evento 4 -->
            <div class="card">
                <div class="card-header">Integración de Empresas</div>
                <div class="card-body">
                    <p>Actividades y dinámicas para fortalecer el trabajo en equipo de tu empresa.</p>
                    <a href="#" class="btn btn-success btn-sm">Ver detalles</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
