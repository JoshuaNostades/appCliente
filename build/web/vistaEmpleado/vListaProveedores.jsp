

<%@page import="services.Evento"%>
<%@page import="model.mEmpleado"%>
<%@page import="services.Proveedor"%>
<%@page import="model.mProveedor"%>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">


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

          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          min-height: 100vh;
          ">






        <%@ include file="../vistaMenu/vMenuEmpleado.jsp" %>
        <%                // Llamamos al servicio
            mProveedor port = new mProveedor();
            mEmpleado memp = new mEmpleado();

            List<Proveedor> listas = port.listarProveedores();

            String ide = String.valueOf(t.getIdEmpleado());
        %>


        <!-- Modal Actualizar Proveedor -->
        <div class="modal fade" id="modalActualizarProveedor" tabindex="-1" aria-labelledby="modalActualizarProveedorLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form action="<%= request.getContextPath()%>/ProveedorController?action=update" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="modalActualizarProveedorLabel">Actualizar Proveedor</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                        </div>
                        <div class="modal-body">
                            <input type="hidden" name="idProveedor" id="idProveedor">

                            <!-- Primera fila: Empleado y Nombre Empresa -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Empleado</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-person-badge"></i></span>
                                        <select class="form-select" name="idEmpleado" id="idEmpleado" required>
                                            <option value="">Seleccione un empleado</option>
                                            <%
                                                try {
                                                    java.util.List<services.Empleado> lista = mEmpleado.listarEmpleados();
                                                    for (services.Empleado e : lista) {
                                            %>
                                            <option value="<%= e.getIdEmpleado()%>"><%= e.getNombre() + " " + e.getApellido()%></option>
                                            <%
                                                    }
                                                } catch (Exception ex) {
                                                    out.println("<option value=''>Error al cargar empleados</option>");
                                                    ex.printStackTrace();
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label class="form-label">Nombre Empresa</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-building"></i></span>
                                        <input type="text" class="form-control" name="nombreEmpresa" id="nombreEmpresa" required>
                                    </div>
                                </div>
                            </div>

                            <!-- Segunda fila: RUC y Teléfono -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">RUC</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-card-text"></i></span>
                                        <input type="text" class="form-control" name="ruc" id="ruc" maxlength="11" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Teléfono</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-telephone"></i></span>
                                        <input type="text" class="form-control" name="telefono" id="telefono">
                                    </div>
                                </div>
                            </div>

                            <!-- Tercera fila: Email y Dirección -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Email</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                                        <input type="email" class="form-control" name="email" id="email">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Dirección</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
                                        <input type="text" class="form-control" name="direccion" id="direccion">
                                    </div>
                                </div>
                            </div>

                            <!-- Cuarta fila: Servicios Ofrecidos y Calificación -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Servicios Ofrecidos</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-list-check"></i></span>
                                        <textarea class="form-control" name="serviciosOfrecidos" id="serviciosOfrecidos" rows="2"></textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <label class="form-label">Calificación</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-star"></i></span>
                                        <input type="number" step="0.1" min="0" max="5" class="form-control" name="calificacion" id="calificacion">
                                    </div>
                                </div>
                            </div>

                            <!-- Quinta fila: Disponibilidad -->
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <label class="form-label">Disponibilidad</label>
                                    <div class="input-group">
                                        <span class="input-group-text"><i class="bi bi-toggle-on"></i></span>
                                        <select class="form-select" name="disponibilidad" id="disponibilidad">
                                            <option value="DISPONIBLE">Disponible</option>
                                            <option value="NO DISPONIBLE">No Disponible</option>
                                        </select>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
                                <i class="bi bi-x-circle"></i> Cancelar
                            </button>
                            <button type="submit" class="btn btn-primary">
                                <i class="bi bi-pencil-square"></i> Actualizar Proveedor
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


  <div class="content">

         <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card border-0" style="min-height: 100vh; width: 100%;">

                <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                    <h3 class="mb-0">Gestion de proveedores</h3>
                    <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                        <i class="bi bi-peaple fs-3"></i>
                    </button>
                </div>

                <div class="card-body">

                    <style>

                        #tablaHabitaciones th, 
                        #tablaHabitaciones td {
                            text-align: center !important;
                            vertical-align: middle !important;
                        }

                    </style>



                    <div class="card-body">
                        <form action="<%= request.getContextPath()%>/ProveedorController?action=add" method="post">

    <!-- Fila 1: Empleado, Nombre Empresa, RUC, Teléfono, Email, Dirección -->
    <div class="row g-2 mb-2">
        <div class="col-md-2">
            <label class="form-label fw-bold">Empleado</label>
            <select class="form-select form-select-sm" name="idEmpleado" required>
                <option value="">Seleccione un empleado</option>
                <%
                    try {
                        java.util.List<services.Empleado> lista = mEmpleado.listarEmpleados();
                        for (services.Empleado e : lista) {
                %>
                <option value="<%= e.getIdEmpleado()%>"><%= e.getNombre() + " " + e.getApellido()%></option>
                <% } 
                    } catch (Exception ex) { %>
                <option value="">Error al cargar empleados</option>
                <% } %>
            </select>
        </div>

        <div class="col-md-2">
            <label class="form-label fw-bold">Nombre Empresa</label>
            <input type="text" class="form-control form-control-sm" name="nombreEmpresa" required>
        </div>

        <div class="col-md-2">
            <label class="form-label fw-bold">RUC</label>
            <input type="text" class="form-control form-control-sm" name="ruc" maxlength="11" required>
        </div>

        <div class="col-md-2">
            <label class="form-label fw-bold">Teléfono</label>
            <input type="text" class="form-control form-control-sm" name="telefono">
        </div>

        <div class="col-md-2">
            <label class="form-label fw-bold">Email</label>
            <input type="email" class="form-control form-control-sm" name="email">
        </div>

        <div class="col-md-2">
            <label class="form-label fw-bold">Dirección</label>
            <input type="text" class="form-control form-control-sm" name="direccion">
        </div>
    </div>

    <!-- Fila 2: Servicios Ofrecidos, Disponibilidad, Calificación -->
    <div class="row g-2 mb-2">
        <div class="col-md-6">
            <label class="form-label fw-bold">Servicios Ofrecidos</label>
            <input type="text" class="form-control form-control-sm" name="serviciosOfrecidos" placeholder="Descripción breve">
        </div>

        <div class="col-md-3">
            <label class="form-label fw-bold">Disponibilidad</label>
            <select class="form-select form-select-sm" name="disponibilidad">
                <option value="DISPONIBLE" selected>Disponible</option>
                <option value="NO DISPONIBLE">No Disponible</option>
            </select>
        </div>

        <div class="col-md-3">
            <label class="form-label fw-bold">Calificación</label>
            <input type="number" step="0.1" min="0" max="5" class="form-control form-control-sm" name="calificacion" placeholder="0.0">
        </div>
    </div>

    <!-- Botones -->
    <div class="mt-3 d-flex gap-2">
        <button type="submit" class="btn btn-success btn-sm">Guardar Proveedor</button>
        <a href="<%= request.getContextPath()%>/vistaEmpleado/vListProveedor.jsp" class="btn btn-secondary btn-sm">Cancelar</a>
    </div>

</form>





                    </div>


                    <!-- Modal Actualizar Evento -->





                    <div class="table-responsive">
                        <table id="tablaEventos" class="table table-bordered table-hover table-striped bg-white table-sm" style="width:100%;">
                            <thead class="table-white text-start">
                                <tr class="text-center">
                                   
                                    <th>Nombre Empresa</th>
                                    <th>RUC</th>
                                    <th>Teléfono</th>
                                    <th>Email</th>
                                    <th>Dirección</th>
                                    <th>Servicios Ofrecidos</th>
                                    <th>Calificación</th>
                                    <th>Disponibilidad</th>

                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {
                                        java.util.List<services.Proveedor> lista = mProveedor.listarProveedores();
                                        for (services.Proveedor p : lista) {
                                %>
                                <tr class="text-center">
                                   

                                    <td><%= p.getNombreEmpresa()%></td>
                                    <td><%= p.getRuc()%></td>
                                    <td><%= p.getTelefono() != null ? p.getTelefono() : "-"%></td>
                                    <td><%= p.getEmail() != null ? p.getEmail() : "-"%></td>
                                    <td class="text-start"><%= p.getDireccion() != null ? p.getDireccion() : "-"%></td>
                                    <td class="text-start"><%= p.getServiciosOfrecidos() != null ? p.getServiciosOfrecidos() : "-"%></td>
                                    <td><%= p.getCalificacion()%></td>
                                    <td><%= p.getDisponibilidad()%></td>


                                    <td>
                                        <!-- Botón editar que abre modal -->
                                        <button 
                                            class="btn btn-warning btn-sm text-white"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modalActualizarProveedor"
                                            data-id="<%= p.getIdProveedor()%>"
                                            data-idempleado="<%= p.getIdEmpleado()%>"
                                            data-nombreempresa="<%= p.getNombreEmpresa()%>"
                                            data-ruc="<%= p.getRuc()%>"
                                            data-telefono="<%= p.getTelefono()%>"
                                            data-email="<%= p.getEmail()%>"
                                            data-direccion="<%= p.getDireccion()%>"
                                            data-servicios="<%= p.getServiciosOfrecidos()%>"
                                            data-calificacion="<%= p.getCalificacion()%>"
                                            data-disponibilidad="<%= p.getDisponibilidad()%>">
                                            <i class="bi bi-pencil"></i>
                                        </button>


                                        <!-- Form eliminar -->
                                        <form class="deleteForm"
                                              action="<%= request.getContextPath()%>/ProveedorController?action=delete"
                                              method="post"
                                              style="display:inline;">
                                            <input type="hidden" name="id_proveedor" value="<%= p.getIdProveedor()%>">
                                            <button type="submit" class="btn btn-danger btn-sm text-white deleteBtn">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                                <%
                                        }
                                    } catch (Exception ex) {
                                        out.println("<tr><td colspan='12'>Error al cargar proveedores</td></tr>");
                                        ex.printStackTrace();
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var table = $('#tablaEventos').DataTable({
                                "pageLength": 5,
                                "lengthChange": false,
                                "scrollY": "300px",
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





                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            var modal = document.getElementById('modalActualizarProveedor');

                            modal.addEventListener('show.bs.modal', function (event) {
                                var button = event.relatedTarget;

                                modal.querySelector('#idProveedor').value = button.getAttribute('data-id');
                                modal.querySelector('#idEmpleado').value = button.getAttribute('data-idempleado');
                                modal.querySelector('#nombreEmpresa').value = button.getAttribute('data-nombreempresa');
                                modal.querySelector('#ruc').value = button.getAttribute('data-ruc');
                                modal.querySelector('#telefono').value = button.getAttribute('data-telefono');
                                modal.querySelector('#email').value = button.getAttribute('data-email');
                                modal.querySelector('#direccion').value = button.getAttribute('data-direccion');
                                modal.querySelector('#serviciosOfrecidos').value = button.getAttribute('data-servicios');
                                modal.querySelector('#calificacion').value = button.getAttribute('data-calificacion');
                                modal.querySelector('#disponibilidad').value = button.getAttribute('data-disponibilidad');
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
