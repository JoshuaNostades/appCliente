<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Eventos Perú | Organiza, descubre y disfruta</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            scroll-behavior: smooth;
        }

        /* Navbar */
        nav {
            transition: all 0.3s ease;
        }

        nav.scrolled {
            background: white !important;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        nav .nav-link {
            font-weight: 500;
            color: #fff !important;
        }

        nav.scrolled .nav-link {
            color: #333 !important;
        }

        /* Hero */
        .hero {
            background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.6)),
                        url('https://images.unsplash.com/photo-1521335629791-ce4aec67ddaf') center/cover no-repeat;
            color: white;
            text-align: center;
            height: 90vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }

        .hero h1 {
            font-size: 3rem;
            font-weight: 700;
            margin-bottom: 15px;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 600px;
        }

        /* Sección de servicios */
        .service-card {
            background: white;
            border-radius: 20px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.08);
            transition: all 0.3s ease;
            padding: 30px;
            text-align: center;
        }

        .service-card:hover {
            transform: translateY(-8px);
        }

        .service-card i {
            font-size: 2.5rem;
            color: #007bff;
        }

        /* Beneficios */
        .benefits {
            background: linear-gradient(135deg, #007bff, #6610f2);
            color: white;
            border-radius: 30px;
            padding: 60px 30px;
        }

        /* Footer */
        footer {
            background-color: #212529;
            color: #ccc;
            padding: 50px 0;
        }

        footer a {
            color: #ccc;
            text-decoration: none;
        }

        footer a:hover {
            color: #fff;
        }

        .social-icons i {
            font-size: 1.5rem;
            margin: 0 10px;
            cursor: pointer;
        }

        .social-icons i:hover {
            color: #0d6efd;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-transparent">
        <div class="container">
            <a class="navbar-brand fw-bold" href="#">
                <i class="bi bi-stars"></i> Eventos Perú
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navmenu">
    <ul class="navbar-nav ms-auto">
        <li class="nav-item"><a class="nav-link" href="#servicios">Servicios</a></li>
        <li class="nav-item"><a class="nav-link" href="#beneficios">Beneficios</a></li>
        <li class="nav-item"><a class="nav-link" href="#contacto">Contacto</a></li>
        <li class="nav-item"><a class="btn btn-light btn-sm ms-3" href="<%= request.getContextPath()%>/vistaCliente/vLoginCliente.jsp">Iniciar sesión</a></li>
        <li class="nav-item"><a class="btn btn-primary btn-sm ms-2" href="<%= request.getContextPath()%>/vistaCliente/vRegisterCliente.jsp">Registrarse</a></li>
        <li class="nav-item"><a class="btn btn-success btn-sm ms-2" href= "<%= request.getContextPath()%>/vistaEmpleado/vLogin.jsp">Sesion trabajador</a></li>
        
    </ul>
</div>

        </div>
    </nav>

    <!-- Hero -->
    <section class="hero">
        <h1>Vive experiencias únicas con <span style="color:#0d6efd;">Eventos Perú</span></h1>
        <p>Organiza, promociona y disfruta de los mejores eventos en todo el país. ¡Tu próxima experiencia te espera!</p>
        <a href="registro.jsp" class="btn btn-primary btn-lg mt-3 px-4 rounded-pill">Comenzar ahora</a>
    </section>

    <!-- Carrusel -->
    <div id="carouselEventos" class="carousel slide container my-5" data-bs-ride="carousel">
        <div class="carousel-inner rounded-4 shadow">
            <div class="carousel-item active">
                <img src="https://images.unsplash.com/photo-1507874457470-272b3c8d8ee2" class="d-block w-100" alt="Evento 1">
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1531058020387-3be344556be6" class="d-block w-100" alt="Evento 2">
            </div>
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e" class="d-block w-100" alt="Evento 3">
            </div>
        </div>
    </div>

    <!-- Servicios -->
    <section id="servicios" class="container text-center my-5">
        <h2 class="fw-bold mb-4">Nuestros Servicios</h2>
        <div class="row g-4">
            <div class="col-md-4">
                <div class="service-card">
                    <i class="bi bi-calendar-event mb-3"></i>
                    <h5>Organiza tus eventos</h5>
                    <p>Gestiona, hazle seguimiento y disfruta del mejor evento a tu talla.</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <i class="bi bi-ticket-perforated mb-3"></i>
                    <h5>Seguimiento y proveedores</h5>
                    <p>Elige la mejor calidad del servicio</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="service-card">
                    <i class="bi bi-bar-chart-line mb-3"></i>
                    <h5>Monitorea resultados</h5>
                    <p>Visualiza estadísticas, reportes y el rendimiento de tus eventos en tiempo real.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Beneficios -->
    <section id="beneficios" class="container my-5">
        <div class="benefits text-center">
            <h2 class="fw-bold mb-3">¿Por qué elegirnos?</h2>
            <p class="lead mb-4">Porque hacemos que cada evento sea especial, fácil de gestionar y memorable.</p>
            <div class="d-flex justify-content-center flex-wrap gap-4">
                <div>
                    <i class="bi bi-lightning-charge display-5"></i>
                    <p>Gestión rápida</p>
                </div>
                <div>
                    <i class="bi bi-shield-check display-5"></i>
                    <p>Seguridad garantizada</p>
                </div>
                <div>
                    <i class="bi bi-emoji-smile display-5"></i>
                    <p>Usuarios satisfechos</p>
                </div>
                <div>
                    <i class="bi bi-geo-alt display-5"></i>
                    <p>Eventos en todo el país</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer id="contacto" class="text-center">
        <div class="container">
            <h5 class="fw-bold mb-3">Eventos Perú</h5>
            <p>Conéctate con nosotros en nuestras redes sociales</p>
            <div class="social-icons mb-4">
                <i class="bi bi-facebook"></i>
                <i class="bi bi-instagram"></i>
                <i class="bi bi-twitter"></i>
                <i class="bi bi-youtube"></i>
            </div>
            <small>© 2025 Eventos Perú | Desarrollado por estudiantes UTP</small>
        </div>
    </footer>

    <script>
        const navbar = document.querySelector('nav');
        window.addEventListener('scroll', () => {
            if (window.scrollY > 50) navbar.classList.add('scrolled');
            else navbar.classList.remove('scrolled');
        });
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
