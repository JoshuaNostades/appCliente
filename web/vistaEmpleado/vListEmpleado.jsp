
<%@page import="model.mEmpleado"%>
<%@page import="java.util.List"%>
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

            .card {
                position: relative;
                display: flex;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #e0e0e0; /* <--- aquí está el blanco */
                background-clip: border-box;
                border: 1px solid rgba(0,0,0,.125);
                border-radius: .25rem;
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
        <%@ include file="../vistaMenu/vMenuEmpleado.jsp" %>
        <%                // Llamamos al servicio
            mEmpleado port = new mEmpleado();

            List<Empleado> listas = port.listarEmpleados();
        %>


        
        
        <div class="content">
        <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card border-0" style="min-height: 100vh; width: 100%;">


                <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                    <h3 class="mb-0">Lista de empleados</h3>
                    <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                        <i class="bi bi-peaple fs-3"></i>
                    </button>
                </div>

                <div class="card-body p-5">

                    <style>

                        #tablaHabitaciones th, 
                        #tablaHabitaciones td {
                            text-align: center !important;
                            vertical-align: middle !important;
                        }

                    </style>


                    <div class="table-responsive">
                        <table id="tablaHabitaciones" class="table table-bordered table-hover table-striped bg-white table-sm" style="width:100%;">
                            <thead class="table-white text-start">
                                <tr>
                                    <th class="text-center">ID Empleado</th>
                                    <th class="text-center">Empleado</th>
                                    <th class="text-center">Dni</th>
                                    <th class="text-center">Nombre</th>
                                    <th class="text-center">Apellido</th>
                                    <th class="text-center">Correo</th>
                                    <th class="text-center">Clave</th>
                                    <th class="text-center">Telefono</th>
                                    <th class="text-center">Estado</th>

                                    <th class="text-center">Acciones</th>

                                </tr>
                            </thead>



                            <tbody>
                                <%
                                    if (listas != null && !listas.isEmpty()) {
                                        for (Empleado h : listas) {
                                %>
                                <tr>
                                    <td class="text-start text-center justify-content-center"><%= h.getIdEmpleado()%></td>

                                    <!-- FOTO DESDE AWS S3 -->


                                    <td class="text-start">
                                        <%
                                            if (h.getIdTipo() == 1) {
                                                // Es empleado, mostrar nombre + apellido
                                                out.print(h.getNombre() + " " + h.getApellido());
                                            } else if (h.getIdTipo() == 2) {
                                                // Es cliente, mostrar 'Cliente' o id_tipo
                                                out.print("Cliente");
                                            } else {
                                                out.print("Otro");
                                            }
                                        %>
                                    </td>

                                    <td class="text-start"><%= h.getDni()%></td>





                                    <td class="text-start"><%= h.getNombre()%></td>
                                    <td class="text-start"><%= h.getApellido()%></td>
                                    <td class="text-start"><%= h.getEmail()%></td>

                                    <td class="text-start"><%= h.getPassword()%></td>
                                    <td class="text-start"><%= h.getTelefono()%></td>
                                    <td class="text-start"><%= h.getEstado()%></td>



                                    <td class="text-center">


                                        <form class="deleteForm"
                                              action="<%= request.getContextPath()%>/EmpleadoController?action=delete"
                                              method="post"
                                              style="display:inline;">

                                            <input type="hidden" name="id_empleado" value="<%= h.getIdEmpleado()%>">

                                            <button type="submit" class="btn btn-outline-danger btn-sm deleteBtn">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                    <%
                                        }
                                    } else {
                                    %>
                                <tr>
                                    <td colspan="9" class="text-start">No hay habitaciones registradas</td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>

                    </div>
                    <script>
                        $(document).ready(function () {
                            var table = $('#tablaHabitaciones').DataTable({
                                "pageLength": 12,
                                "lengthChange": false,
                                "scrollY": "400px",
                                "scrollCollapse": true,
                                "paging": true,
                                "ordering": true,
                                "language": {
                                    "search": "Buscar:",
                                    "info": "Mostrando _START_ a _END_ de _TOTAL_ registros",
                                    "paginate": {
                                        "first": "Primero",
                                        "last": "Último",
                                        "next": "Siguiente",
                                        "previous": "Anterior"
                                    },
                                    "emptyTable": "No hay datos disponibles"
                                },
                                "dom": 'rt<"bottom"ip><"clear">', // oculta el input default de búsqueda
                            });

                            // Conectar tu input personalizado
                            $('#customSearchHabitacion').on('keyup', function () {
                                table.search(this.value).draw();
                            });
                        });

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
