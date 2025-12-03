
<%@page import="model.mProveedor"%>
<%@page import="services.Proveedor"%>
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
            mProveedor port = new mProveedor();

            List<Proveedor> lista = port.listarProveedores();
        %>



        <style>
            .prov-card {
                width: 200px;
                border-radius: 18px;
                overflow: hidden;
                background: #fff;
                transition: transform .25s ease, box-shadow .25s ease;
                box-shadow: 0 4px 15px rgba(0,0,0,0.08);
            }

            .prov-card:hover {
                transform: translateY(-6px);
                box-shadow: 0 8px 25px rgba(0,0,0,0.15);
            }

            .prov-img {
                width: 100%;
                height: 120px;
                object-fit: cover;
            }

            .prov-body {
                padding: 12px;
                text-align: center;
            }

            .badge-cat {
                padding: 3px 8px;
                border-radius: 10px;
                font-size: .7rem;
            }

            .scroll-container {
                overflow-x: auto;
                white-space: nowrap;
                padding-bottom: 15px;
            }

            .scroll-grid {
                display: flex;
                gap: 20px;
            }
        </style>
        
         <div class="content">

        <div class="d-flex justify-content-center align-items-center ms-3" style="height: 100vh;">
            <div class="card border-0" style="min-height: 90vh; width: 90%; opacity: .97;">

                <div class="card-header text-white d-flex justify-content-between align-items-center"
                     style="background: linear-gradient(135deg, #009688, #00695c); border-radius: 10px 10px 0 0;">
                    <h3 class="mb-0">Proveedores asistidos</h3>
                    <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                         <i class="bi bi-peaple fs-3"></i>
                    </button>
                </div>

                <div class="card-body p-4">

                    <!-- SCROLL -->
                    <div class="scroll-container">
                        <div class="scroll-grid">

                            <%
                                for (Proveedor p : lista) {

                                    // ASIGNAR IMAGEN SEGÚN CATEGORÍA
                                    String imgCategoria = "images/defaultt.jpg";

                                    switch (p.getServiciosOfrecidos() != null ? p.getServiciosOfrecidos().toUpperCase() : "") {
                                        case "ANIVERSARIO":
                                            imgCategoria = "images/aniversario.jpg";
                                            break;
                                        case "MATRIMONIO":
                                            imgCategoria = "images/matrimonio.jpg";
                                            break;
                                        case "INTEGRACION":
                                            imgCategoria = "images/integracion.jpg";
                                            break;
                                        case "OTRO":
                                            imgCategoria = "images/otro.jpg";
                                            break;
                                    }
                            %>

                            <!-- CARD -->
                            <div class="prov-card">
                                <img src="<%= request.getContextPath() + "/" + imgCategoria%>" class="prov-img">

                                <div class="prov-body">
                                    <h6 class="fw-bold mb-1"><%= p.getNombreEmpresa()%></h6>

                                    <span class="badge bg-secondary mb-1" style="font-size: .75rem;">
                                        RUC: <%= p.getRuc()%>
                                    </span>

                                    <div style="font-size: .85rem; color: #ff9800;">
                                        ⭐ <%= p.getCalificacion()%>
                                    </div>

                                    <span class="badge-cat mt-1"
                                          style="background:<%= p.getDisponibilidad().equals("DISPONIBLE") ? "#c8f7dc" : "#ffd6d6"%>;
                                          color:<%= p.getDisponibilidad().equals("DISPONIBLE") ? "#2e7d32" : "#c62828"%>;">
                                        <%= p.getDisponibilidad()%>
                                    </span>
                                </div>
                            </div>

                            <% }%>

                        </div>
                    </div>
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
