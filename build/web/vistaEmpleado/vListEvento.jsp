
<%@page import="model.mProveedor"%>
<%@page import="services.Proveedor"%>
<%@page import="model.mEvento"%>
<%@page import="services.Evento"%>
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
          background-image: url('<%= request.getContextPath()%>/images/fondoGris.jpg');
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          min-height: 100vh;
          ">

        
        

        <div class="modal fade" id="modalActualizarEvento" tabindex="-1" aria-labelledby="modalActualizarEventoLabel" aria-hidden="true">
            <div class="modal-dialog modal-md"> <!-- MÁS PEQUEÑO -->
                <div class="modal-content">
                    <form action="<%= request.getContextPath()%>/EventoController?action=update" method="post"
                          enctype="multipart/form-data">

                        <div class="modal-header py-2">
                            <h5 class="modal-title">Actualizar Evento</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                        </div>

                        <div class="modal-body" style="font-size: 14px;">
                            <input type="hidden" name="idEventou" id="idEvento">
                            <input type="hidden" name="imagenActual" id="imagenActual">

                            <!-- EMPLEADO - PROVEEDOR -->
                            <div class="row g-2 mb-2">
                                <div class="col-6">
                                    <label class="form-label mb-1">Empleado</label>
                                    <select class="form-select form-select-sm" name="idEmpleadou" id="empleado" required>
                                        <option value="">Seleccionar</option>
                                        <%
                                            try {
                                                for (services.Empleado e : mEmpleado.listarEmpleados()) {
                                        %>
                                        <option value="<%= e.getIdEmpleado()%>"><%= e.getNombre() + " " + e.getApellido()%></option>
                                        <%
                                                }
                                            } catch (Exception ex) {
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="col-6">
                                    <label class="form-label mb-1">Proveedor</label>
                                    <select class="form-select form-select-sm" name="idProveedoru" id="proveedor">
                                        <option value="">Seleccionar</option>
                                        <%
                                            try {
                                                for (services.Proveedor p : mProveedor.listarProveedores()) {
                                        %>
                                        <option value="<%= p.getIdProveedor()%>"><%= p.getNombreEmpresa()%></option>
                                        <%
                                                }
                                            } catch (Exception ex) {
                                            }
                                        %>
                                    </select>
                                </div>
                            </div>

                            <!-- TÍTULO -->
                            <div class="mb-2">
                                <label class="form-label mb-1">Título</label>
                                <input type="text" class="form-control form-control-sm" name="titulou" id="titulo" required>
                            </div>

                            <!-- CATEGORÍA - FECHA -->
                            <div class="row g-2 mb-2">
                                <div class="col-6">
                                    <label class="form-label mb-1">Categoría</label>
                                    <select class="form-select form-select-sm" name="categoriau" id="categoria">
                                        <option value="ANIVERSARIO">Aniversario</option>
                                        <option value="MATRIMONIO">Matrimonio</option>
                                        <option value="INTEGRACION">Integración</option>
                                        <option value="OTRO">Otro</option>
                                    </select>
                                </div>

                                <div class="col-6">
                                    <label class="form-label mb-1">Fecha</label>
                                    <input type="date" class="form-control form-control-sm" name="fechaEventou" id="fechaEvento">
                                </div>
                            </div>

                            <!-- LUGAR Y ESTADO -->
                            <div class="row g-2 mb-2">
                                <div class="col-6">
                                    <label class="form-label mb-1">Lugar</label>
                                    <input type="text" class="form-control form-control-sm" name="lugaru" id="lugar">
                                </div>

                                <div class="col-6">
                                    <label class="form-label mb-1">Estado</label>
                                    <select class="form-select form-select-sm" name="estadou" id="estado">
                                        <option value="PENDIENTE">Pendiente</option>
                                        <option value="EN PROCESO">En Proceso</option>
                                        <option value="FINALIZADO">Finalizado</option>
                                        <option value="CANCELADO">Cancelado</option>
                                    </select>
                                </div>
                            </div>

                            <!-- DESCRIPCIÓN -->
                            <div class="mb-2">
                                <label class="form-label mb-1">Descripción</label>
                                <textarea class="form-control form-control-sm" name="descripcionu" id="descripcion" rows="2"></textarea>
                            </div>

                            <!-- IMAGEN -->
                            <div class="row g-2 align-items-center">
                                <div class="col-4 text-center">
                                    <label class="form-label mb-1">Imagen Actual</label>
                                    <img id="previewActualizar"
                                         src="<%= request.getContextPath()%>/images/no-image.png"
                                         style="width: 100%; height: 120px; object-fit: cover; border-radius: 6px;">
                                </div>

                                <div class="col-8">
                                    <label class="form-label mb-1">Cambiar Imagen</label>
                                    <input type="file" class="form-control form-control-sm" name="imagenu" id="imagenActualizar" accept="image/*">
                                </div>
                            </div>

                        </div>

                        <div class="modal-footer py-2">
                            <button type="button" class="btn btn-secondary btn-sm" data-bs-dismiss="modal">Cancelar</button>
                            <button type="submit" class="btn btn-primary btn-sm">Actualizar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>



        <%@ include file="../vistaMenu/vMenuEmpleado.jsp" %>
        <%                // Llamamos al servicio
            mEvento port = new mEvento();

            List<Evento> listas = port.listarEventos();

            String ide = String.valueOf(t.getIdEmpleado());
        %>

        
         <div class="content">

       
             <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card border-0" style="min-height: 100vh; width: 100%;">

                <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                    <h3 class="mb-0">Gestion de eventos</h3>
                    <button class="btn btn-dark" data-bs-toggle="modal" data-bs-target="#">
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



                    <div class="containers">
                        <div class="card shadow-sm">
                            
                            <div class="card-body">
                                <form action="<%= request.getContextPath()%>/EventoController?action=add" 
                  method="post" enctype="multipart/form-data">

                <!-- Fila 1: Empleado, Proveedor, Título, Categoría -->
                <div class="row g-2">
                    <div class="col-md-3">
                        <label class="form-label fw-bold">Empleado</label>
                        <select class="form-select form-select-sm" name="idEmpleado" required>
                            <option value="">Seleccione</option>
                            <%
                                try {
                                    java.util.List<services.Empleado> lista = mEmpleado.listarEmpleados();
                                    for (services.Empleado e : lista) {
                            %>
                            <option value="<%= e.getIdEmpleado()%>"><%= e.getNombre() + " " + e.getApellido()%></option>
                            <% }
                                } catch (Exception ex) { %>
                            <option value="">Error al cargar</option>
                            <% } %>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label class="form-label fw-bold">Proveedor</label>
                        <select class="form-select form-select-sm" name="idProveedor">
                            <option value="">Seleccione</option>
                            <%
                                try {
                                    java.util.List<services.Proveedor> lista = mProveedor.listarProveedores();
                                    for (services.Proveedor p : lista) {
                            %>
                            <option value="<%= p.getIdProveedor()%>"><%= p.getNombreEmpresa()%></option>
                            <% }
                                } catch (Exception e) { %>
                            <option value="">Error</option>
                            <% } %>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label class="form-label fw-bold">Título</label>
                        <input type="text" class="form-control form-control-sm" name="titulo" required>
                    </div>

                    <div class="col-md-3">
                        <label class="form-label fw-bold">Categoría</label>
                        <select class="form-select form-select-sm" name="categoria" required>
                            <option value="">Seleccione</option>
                            <option value="ANIVERSARIO">Aniversario</option>
                            <option value="MATRIMONIO">Matrimonio</option>
                            <option value="INTEGRACION">Integración</option>
                            <option value="OTRO">Otro</option>
                        </select>
                    </div>
                </div>

                <!-- Fila 2: Fecha, Lugar, Estado, Descripción, Imagen -->
                <div class="row g-2 mt-2">
                    <div class="col-md-2">
                        <label class="form-label fw-bold">Fecha</label>
                        <input type="date" class="form-control form-control-sm" name="fechaEvento">
                    </div>

                    <div class="col-md-2">
                        <label class="form-label fw-bold">Lugar</label>
                        <input type="text" class="form-control form-control-sm" name="lugar">
                    </div>

                    <div class="col-md-2">
                        <label class="form-label fw-bold">Estado</label>
                        <select class="form-select form-select-sm" name="estado">
                            <option value="PENDIENTE">Pendiente</option>
                            <option value="EN PROCESO">En Proceso</option>
                            <option value="FINALIZADO">Finalizado</option>
                            <option value="CANCELADO">Cancelado</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label class="form-label fw-bold">Descripción</label>
                        <input type="text" class="form-control form-control-sm" name="descripcion">
                    </div>

                    <div class="col-md-3">
                        <label class="form-label fw-bold">Imagen</label>
                        <input type="file" class="form-control form-control-sm" name="imagen" accept="image/*">
                    </div>
                </div>

                <!-- Botones -->
                <div class="mt-3 d-flex gap-2">
                    <button type="submit" class="btn btn-success btn-sm">Guardar</button>
                    <a href="<%= request.getContextPath()%>/vistaEmpleado/vListEvento.jsp" class="btn btn-secondary btn-sm">Cancelar</a>
                </div>

            </form>
                            </div>
                        </div>
                    </div>



                    <!-- Modal Actualizar Evento -->





                    <div class="table-responsive mt-3">
                        <table id="tablaEventos" class="table table-bordered table-hover table-striped bg-white table-sm" style="width:100%;">
                            <thead class="table-white text-start">
                                <tr>
                                   
                                    <th class="text-center">Imagen</th>
                                    <th class="text-center">Encargado</th>
                                    <th class="text-center">Participante</th>
                                    <th class="text-center">Título</th>
                                    <th class="text-center">Categoría</th>
                                    <th class="text-center">Fecha Evento</th>
                                    <th class="text-center">Lugar</th>
                                    
                                    <th class="text-center">Descripción</th>
                                    <th class="text-center">Fecha Creación</th>

                                    <th class="text-center">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    if (listas != null && !listas.isEmpty()) {
                                        for (Evento e : listas) {
                                %>
                                <tr>
                                    
                                    <td class="text-center">
                                        <img src="<%= request.getContextPath()%>/images/<%= e.getImagen()%>" 
                                             alt="Evento" 
                                             style="width: 80px; height: 60px; object-fit: cover; border-radius: 5px;">
                                    </td>



                                    <td class="text-center" style="font-size: 0.6rem;">
                                        <%

                                            String ne = "-"; // Valor por defecto

                                            mEmpleado mel = new mEmpleado();

                                            String proveer = mel.obtenerNombreApellido(e.getIdEmpleado());


                                        %>
                                        <%= proveer%>
                                    </td>


                                    <td class="text-center " style="font-size: 0.6rem;">
                                        <%

                                            String pa = "-"; // Valor por defecto

                                            mProveedor mproveedor = new mProveedor();

                                            String proveers = mproveedor.obtenerNombreEmpresa(e.getIdProveedor());


                                        %>
                                        <%= proveers%>
                                    </td>



                                    <td class="text-start" style="font-size: 0.6rem;"><%= e.getTitulo()%></td>
                                    <td class="text-center" style="font-size: 0.6rem;"><%= e.getCategoria()%></td>
                                    <td class="text-center" style="font-size: 0.6rem;"><%= e.getFechaEvento() != null ? e.getFechaEvento() : "-"%></td>
                                    <td class="text-start" style="font-size: 0.6rem;"><%= e.getLugar() != null ? e.getLugar() : "-"%></td>
                              
                                    <td class="text-start" style="font-size: 0.6rem;"><%= e.getDescripcion() != null ? e.getDescripcion() : "-" %></td>

                                    <td class="text-center" style="font-size: 0.6rem;"><%= e.getFechaCreacion()%></td>

                                    <td class="text-center" style="font-size: 0.6rem;">
                                        <button 
                                            class="btn btn-outline-warning  btnEdit"
                                            data-bs-toggle="modal"
                                            data-bs-target="#modalActualizarEvento"
                                            data-id="<%= e.getIdEvento()%>"
                                            data-titulo="<%= e.getTitulo()%>"
                                            data-categoria="<%= e.getCategoria()%>"
                                            data-fecha="<%= e.getFechaEvento()%>"
                                            data-lugar="<%= e.getLugar()%>"
                                            data-estado="<%= e.getEstado()%>"
                                            data-descripcion="<%= e.getDescripcion()%>"

                                            data-proveedor="<%= e.getIdProveedor()%>"
                                            data-empleado="<%= e.getIdEmpleado()%>">
                                            <i class="bi bi-pencil"></i>
                                        </button>


                                        <form class="deleteForm"
                                              action="<%= request.getContextPath()%>/EventoController?action=delete"
                                              method="post"
                                              style="display:inline;">
                                            <input type="hidden" name="id_evento" value="<%= e.getIdEvento()%>">
                                            <button type="submit" class="btn btn-outline-danger btn-sm deleteBtn">
                                                <i class="bi bi-trash"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                                <%
                                    }
                                } else {
                                %>
                                <tr>
                                    <td colspan="12" class="text-center">No hay eventos registrados</td>
                                </tr>
                                <% }%>
                            </tbody>
                        </table>
                    </div>

                    <script>
                        $(document).ready(function () {
                            var table = $('#tablaEventos').DataTable({
                                "pageLength": 8,
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



                        // Cuando haces click en el botón editar
                        $(".btnEdit").on("click", function () {

                            const imagen = $(this).data("imagen"); // VIENE DEL data-imagen DE TU BOTÓN

                            // Ponemos la imagen actual en el preview
                            $("#previewActualizar").attr("src", imagen);

                            // Guardamos el nombre actual por si no se cambia
                            $("#imagenActual").val(imagen);
                        });


                        $("#imagenActualizar").on("change", function () {
                            const file = this.files[0];
                            if (file) {
                                $("#previewActualizar").attr("src", URL.createObjectURL(file));
                            }
                        });


                    </script>





                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            var modal = document.getElementById('modalActualizarEvento');

                            modal.addEventListener('show.bs.modal', function (event) {
                                var button = event.relatedTarget; // Botón que abrió el modal
                                var idEvento = button.getAttribute('data-id');
                                var titulo = button.getAttribute('data-titulo');
                                var categoria = button.getAttribute('data-categoria');
                                var fecha = button.getAttribute('data-fecha');
                                var lugar = button.getAttribute('data-lugar');
                                var estado = button.getAttribute('data-estado');
                                var descripcion = button.getAttribute('data-descripcion');

                                var proveedor = button.getAttribute('data-proveedor'); // ID del proveedor
                                var empleado = button.getAttribute('data-empleado');   // ID del empleado

                                // Setear valores en los inputs del modal
                                modal.querySelector('#idEvento').value = idEvento;
                                modal.querySelector('#titulo').value = titulo;
                                modal.querySelector('#categoria').value = categoria;
                                modal.querySelector('#fechaEvento').value = fecha;
                                modal.querySelector('#lugar').value = lugar;
                                modal.querySelector('#estado').value = estado;
                                modal.querySelector('#descripcion').value = descripcion;

                                // Para selects, buscar la opción correspondiente por value y seleccionarla
                                var selectProveedor = modal.querySelector('#proveedor');
                                if (selectProveedor)
                                    selectProveedor.value = proveedor;

                                var selectEmpleado = modal.querySelector('#empleado');
                                if (selectEmpleado)
                                    selectEmpleado.value = empleado;
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
