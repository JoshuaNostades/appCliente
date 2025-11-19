
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Panel Principal</title>

        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Bootstrap Icons -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <link href="../vistaMenu/styleMenu.css" rel="stylesheet" type="text/css"/>

        <!-- jQuery -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

        <!-- DataTables CSS y JS -->
        <link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">
        <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>


        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
        <style>
            body {
                background: #f5f7fa;
                font-family: 'Segoe UI', sans-serif;

            }

            /* Contenedor general */
            .container-etapas {
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 25px;
                flex-wrap: nowrap;
            }

            /* Icono principal */
            .icon-trabajador {
                font-size: 3.5rem;
                color: #e0e0e0;
                cursor: pointer;
                transition: transform 0.3s ease;
            }

            .icon-trabajador:hover {
                transform: scale(1.1);
            }

            /* Cuadros */
            .cuadro {
                width: 300px;
                min-height: 220px;
                background: #ffffff;
                border-radius: 16px;
                padding: 20px;
                box-shadow: 0 6px 18px rgba(120,120,120,0.15);
                border: 1px solid #c9c9c9;
                opacity: 0.5;
                pointer-events: none;
                transition: all 0.4s ease;
            }

            .cuadro.active {
                opacity: 1;
                pointer-events: auto;
                border: 1px solid #ffffff;
                box-shadow: 0 6px 18px rgba(120,120,120,0.15);

                transform: translateY(-4px);
            }

            /* Header dentro de los cuadros */
            .cuadro h6 {
                text-align: center;
                font-weight: 600;
                color: #ffffff;
                background: #bababa;
                padding: 8px;
                border-radius: 8px;
                margin-bottom: 12px;
            }

            /* Inputs */
            .form-control, .form-select {
                border-radius: 10px;
                border: 1px solid #999999;
                transition: all 0.2s;
            }

            .form-control:focus, .form-select:focus {
                border-color: #878787;
                box-shadow: 0 0 6px rgba(13,110,253,0.25);
            }

            /* Flechas */
            .arrow {
                font-size: 2.5rem;
                color: #d1d5db;
                transition: color 0.3s ease, transform 0.3s ease;
            }

            .arrow.active {
                color: #6ce4ad;
                transform: scale(1.1);
            }

            /* Botón registrar */
            .btn-success {
                border-radius: 10px;
                font-weight: 500;
                padding: 6px 16px;
            }

            .titulo {
                font-weight: 700;
                color: #88898a;
            }
        </style>

    </head>

    <body style="
          background-image: url('<%= request.getContextPath()%>/images/fondo.jpg');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          min-height: 100vh;
          ">
        <%@ include file="../vistaMenu/vMenuCliente.jsp" %>




        <div class="container-fluid py-5">
            <div class="container">

                <div class="d-flex justify-content-between align-items-center mb-5">
                    <div class="d-flex gap-4">
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">TIPOS DE EVENTOS:</a>
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">CUMPLEAÑOS</a>
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">MATRIMONIOS</a>
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">BAUTIZOS</a>
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">FIESTAS DE 15 AÑOS</a>
                        <a class="text-light text-uppercase text-decoration-none fw-semibold" href="#">ENTRE OTROS</a>
                    </div>

                    
                </div>

                <div class="text-center mt-5 pt-5">
                    <h1 class="display-4 fw-light text-light">BIENVENIDO &amp; A EVENTOS PERU</h1>
                    <p class="text-uppercase mb-4 text-light" style="letter-spacing: 4px;">
                        Gestiona tus eventos mas facil y rapido.
                    </p>
                    <p class="mx-auto text-light" style="max-width: 700px;">
                        Eventos Peru es una plataforma diseñada para facilitar y optimizar la gestión completa
                        de eventos, permitiendo a los clientes organizar sus actividades de manera rápida, ordenada y profesional.
                        La aplicación permite registrar eventos, controlar la asistencia, gestionar a los proveedores del mismo evento, 
                        asignar responsables, almacenar información importante, y llevar un seguimiento del estado
                        de cada actividad. Todo esto desde una interfaz sencilla y accesible.

                        El sistema está pensado para adaptarse a distintos tipos de eventos: conferencias, 
                        talleres, reuniones corporativas, celebraciones, actividades académicas y más. Su objetivo principal es brindar al cliente una herramienta fiable que le permita tomar decisiones rápidas, reducir errores y tener el control total de cada detalle del evento.

                        Con Eventos Peru, la organización se vuelve más fluida, segura y eficiente, ofreciendo
                        una experiencia moderna tanto para los administradores como para los asistentes.
                    </p>
                </div>
            </div>
        </div>
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../vistaMenu/scriptMenu.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>
</html>
