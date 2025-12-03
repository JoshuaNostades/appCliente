
<%@page import="model.mEvento"%>
<%@page import="java.util.List"%>
<%@page import="services.Evento"%>
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
          background-image: url('<%= request.getContextPath()%>/images/fondoGris.jpg');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          min-height: 100vh;
          ">
        <%@ include file="../vistaMenu/vMenuCliente.jsp" %>
        <%                // Llamamos al servicio
            mEvento port = new mEvento();

            List<Evento> lista = port.listarEventos();
        %>


        <!-- Modal Detalles del Evento -->
        <div class="modal fade" id="modalDetallesEvento" tabindex="-1" aria-labelledby="modalDetallesEventoLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header bg-dark text-white">
                        <h5 class="modal-title" id="modalDetallesEventoLabel">Detalles del Evento</h5>
                        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                    </div>
                    <div class="modal-body">
                        <!-- Contenedor de la información -->
                        <div class="row">
                            <div class="col-md-6">
                                <!-- Imagen del evento -->
                                <img id="eventoImagen" src="" alt="Imagen del evento" class="img-fluid rounded" style="height: 250px; object-fit: cover; width: 100%;">
                            </div>
                            <div class="col-md-6">
                                <h4 id="eventoTitulo" class="fw-bold"></h4>
                                <p><strong>Categoría:</strong> <span id="eventoCategoria"></span></p>
                                <p><strong>Fecha:</strong> <span id="eventoFecha"></span></p>
                                <p><strong>Lugar:</strong> <span id="eventoLugar"></span></p>
                                <p><strong>Estado:</strong> <span id="eventoEstado"></span></p>
                                <p><strong>Proveedor:</strong> <span id="eventoProveedor"></span></p>
                                <p><strong>Descripción:</strong></p>
                                <p id="eventoDescripcion" style="white-space: pre-wrap;"></p>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="btnSeguimiento" type="button" class="btn btn-primary">
                            <i class="bi bi-eye"></i> Hacer Seguimiento
                        </button>
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            // Abrir modal y llenar datos
            document.addEventListener("DOMContentLoaded", function () {
                const modal = new bootstrap.Modal(document.getElementById('modalDetallesEvento'));

                document.querySelectorAll('.btn-ver-detalles').forEach(button => {
                    button.addEventListener('click', function () {
                        const eventoId = this.getAttribute('data-id');
                        const titulo = this.getAttribute('data-titulo');
                        const categoria = this.getAttribute('data-categoria');
                        const fecha = this.getAttribute('data-fecha');
                        const lugar = this.getAttribute('data-lugar');
                        const estado = this.getAttribute('data-estado');
                        const descripcion = this.getAttribute('data-descripcion');
                        const imagen = this.getAttribute('data-imagen') || 'images/fondo.jpg';
                        const proveedor = this.getAttribute('data-proveedor') || '-';

                        document.getElementById('eventoTitulo').textContent = titulo;
                        document.getElementById('eventoCategoria').textContent = categoria;
                        document.getElementById('eventoFecha').textContent = fecha;
                        document.getElementById('eventoLugar').textContent = lugar;
                        document.getElementById('eventoEstado').textContent = estado;
                        document.getElementById('eventoDescripcion').textContent = descripcion;
                        document.getElementById('eventoImagen').src = imagen;
                        document.getElementById('eventoProveedor').textContent = proveedor;

                        // Opcional: puedes agregar el ID del evento al botón de seguimiento
                        document.getElementById('btnSeguimiento').setAttribute('data-id', eventoId);

                        modal.show();
                    });
                });
            });
        </script>






        <div class="content">
            <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
                <div class="card border-0" style="min-height: 100vh; width: 100%;">


                    <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                        <h3 class="mb-0">Eventos disponibles</h3>
                        <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                            <i class="bi bi-peaple fs-3"></i>
                        </button>
                    </div>

                    <div class="card-body p-5">




                        <div class="container py-5" style="max-width: 100%;">

                            <h2 class="text-muted mb-4 fw-bold">Catalogo de eventos</h2>

                            <!-- CONTENEDOR PRINCIPAL CON PADDING REAL -->
                            <div style="
                               
                                 padding: 30px;                 /* PADDING QUE FALTABA */
                                 border-radius: 15px;
                                 ">

                                <!-- CARRUSEL -->
                                <div id="sliderEventos" style="
                                     white-space: nowrap;
                                     overflow-x: auto;
                                     overflow-y: hidden;
                                     padding: 10px 0;           /* SEPARACIÓN INTERNA */
                                     scroll-behavior: smooth;
                                     ">

                                    <!-- CARDS CENTRADAS -->
                                    <div id="track" class="d-flex" style="gap: 30px; justify-content: flex-start;">
                                        <%
                                            for (Evento e : lista) {
                                                String img = (e.getImagen() != null && !e.getImagen().isEmpty())
                                                        ? "img/" + e.getImagen()
                                                        : "img/no-image.png";
                                        %>

                                        <!-- TARJETAS MÁS GRANDES -->
                                        <div style="display: inline-block; width: 400px;">
                                            <div class="card shadow-sm" style="border-radius: 12px; width: 400px;">

                                                <div style="width: 100%; height: 220px; overflow: hidden; border-radius: 10px;">
                                                    <img src="<%= request.getContextPath()%>/images/<%=e.getImagen() != null && !e.getImagen().isEmpty()
                                                             ? e.getImagen()
                                                             : "fondoappp.jpg"%>"
                                                         alt="Imagen del evento"
                                                         style="width: 100%; height: 100%; object-fit: cover; object-position: center;">
                                                </div>



                                                <div class="card-body">
                                                    <h5 class="card-title fw-bold"><%= e.getTitulo()%></h5>

                                                    <p class="card-text text-muted" 
                                                       style="white-space: normal; 
                                                       font-size: 0.6rem; font-weight: 700; color: #000;
                                                       overflow-wrap: break-word; 
                                                       word-wrap: break-word;">
                                                        <%= e.getDescripcion()%>
                                                    </p>

                                                    <p class="text-primary fw-semibold">
                                                        Fecha: <%= e.getFechaEvento()%>
                                                    </p>
                                                </div>

                                                <div class="card-footer text-center bg-white">
                                                    <a href="javascript:void(0);" 
                                                       class="btn btn-dark w-100 btn-ver-detalles"

                                                       data-id="<%= e.getIdEvento()%>"
                                                       data-titulo="<%= e.getTitulo()%>"
                                                       data-categoria="<%= e.getCategoria()%>"
                                                       data-fecha="<%= e.getFechaEvento() != null ? e.getFechaEvento() : "-"%>"
                                                       data-lugar="<%= e.getLugar() != null ? e.getLugar() : "-"%>"
                                                       data-estado="<%= e.getEstado()%>"
                                                       data-descripcion="<%= e.getDescripcion() != null ? e.getDescripcion() : "-"%>"

                                                       <%
                                                           String rutaImg = (e.getImagen() != null && !e.getImagen().isEmpty())
                                                                   ? request.getContextPath() + "/images/" + e.getImagen()
                                                                   : request.getContextPath() + "/images/fondoappp.jpg";
                                                       %>

                                                       data-imagen="<%= rutaImg%>">

                                                        Ver Detalles
                                                    </a>


                                                </div>

                                            </div>
                                        </div>

                                        <% }%>
                                    </div>
                                </div>
                            </div>
                        </div>




                        <!-- SCRIPT AUTOSCROLL INFINITO -->
                        <script>
                            const slider = document.getElementById("sliderEventos");
                            let speed = 1;
                            let autoScroll;

                            function startAutoScroll() {
                                autoScroll = setInterval(() => {
                                    slider.scrollLeft += speed;



                                }, 20);
                            }

                            function stopAutoScroll() {
                                clearInterval(autoScroll);
                            }

                            // Iniciar auto scroll
                            startAutoScroll();

                            // Poner pausa si se coloca el mouse encima
                            slider.addEventListener("mouseover", stopAutoScroll);

                            // Reanudar cuando sale el mouse
                            slider.addEventListener("mouseleave", startAutoScroll);
                        </script>


                    </div>

                </div>
            </div>
        </div>





        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../vistaMenu/scriptMenu.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>




</html>
