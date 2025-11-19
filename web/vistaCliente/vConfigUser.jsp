<%@page import="services.Cliente"%>
<%@page import="services.Evento"%>
<%@page import="model.mEvento"%>
<%@page import="java.util.List"%>
<%@page import="model.mCliente"%>
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
          background-image: url('<%= request.getContextPath()%>/images/fondoappp.jpg');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          min-height: 100vh;
          ">
        <%@ include file="../vistaMenu/vMenuCliente.jsp" %>

        <%                // Llamamos al servicio
            mCliente mc = new mCliente();

            String emai = t.getEmail();

            Cliente listas = mc.obtenerClientePorEmail(emai);
            
String nombre = listas.getNombre();
String ape = listas.getApellido();
String dni = listas.getDni();
String tel = listas.getTelefono();
String email = listas.getEmail();
String dir = listas.getDireccion();

        %>

        <div class="d-flex justify-content-center align-items-center ms-3" style="height: 100vh;">
            <div class="card border-0" style="min-height: 90vh; width: 85%; opacity: 0.9;">


                <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                    <h3 class="mb-0">Mi perfil</h3>
                    <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                        <i class="bi bi-person-plus fs-3"></i>
                    </button>
                </div>

                <div class="card-body p-5">



                    <div class="container py-4">

                        <!-- TÍTULO -->
                        <h2 class="text-center mb-4 fw-bold">Configuración de Cuenta</h2>

                        <!-- CARD -->
                        <div class="card shadow border-0">
                            <div class="card-body p-4">

                                <!-- Estado de verificación -->
                                <div class="alert <%= listas.isVerificado() ? "alert-success" : "alert-warning"%> text-center">
                                    <strong>
                                        <%= listas.isVerificado() ? "Cuenta Verificada ✔️" : "Cuenta No Verificada ❌"%>
                                    </strong>
                                </div>

                                <!-- FORMULARIO -->
                                <form action="ControllerCliente?accion=actualizar" method="POST">

                                    <div class="row g-3">

                                        <!-- Nombre -->
                                        <div class="col-md-6">
                                            <label class="form-label fw-semibold">Nombre</label>
                                            <input type="text" name="nombre" class="form-control" value="<%= nombre %>" required>
                                        </div>

                                        <!-- Apellido -->
                                        <div class="col-md-6">
                                            <label class="form-label fw-semibold">Apellido</label>
                                            <input type="text" name="apellido" class="form-control" value="<%= ape%>" required>
                                        </div>

                                        <!-- DNI -->
                                        <div class="col-md-6">
                                            <label class="form-label fw-semibold">DNI</label>
                                            <input type="text" name="dni" class="form-control" value="<%= dni%>" maxlength="8" required>
                                        </div>

                                        <!-- Teléfono -->
                                        <div class="col-md-6">
                                            <label class="form-label fw-semibold">Teléfono</label>
                                            <input type="text" name="telefono" class="form-control" value="<%= tel%>">
                                        </div>

                                        <!-- Email -->
                                        <div class="col-md-12">
                                            <label class="form-label fw-semibold">Correo Electrónico</label>
                                            <input type="email" name="email" class="form-control" value="<%= email%>" required>
                                        </div>

                                        <!-- Dirección -->
                                        <div class="col-md-12">
                                            <label class="form-label fw-semibold">Dirección</label>
                                            <input type="text" name="direccion" class="form-control" value="<%= dir%>">
                                        </div>

                                        <!-- Contraseña -->
                                        <div class="col-md-12">
                                            <label class="form-label fw-semibold">Contraseña Nueva</label>
                                            <input type="password" name="password" class="form-control" placeholder="Dejar vacío para no cambiar">
                                        </div>

                                    </div>

                                    <!-- BOTÓN GUARDAR -->
                                    <div class="text-center mt-4">
                                        <button class="btn btn-dark px-4 py-2">
                                            Guardar Cambios
                                        </button>
                                    </div>

                                </form>

                            </div>
                        </div>

                    </div>

                    <!-- Bootstrap JS -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>





                </div>

            </div>
        </div>






        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="../vistaMenu/scriptMenu.js" type="text/javascript"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>




</html>
