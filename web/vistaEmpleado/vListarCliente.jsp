
<%@page import="services.Cliente"%>
<%@page import="model.mCliente"%>
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
        <%@ include file="../vistaMenu/vMenuEmpleado.jsp" %>
        <%                // Llamamos al servicio
            mEvento port = new mEvento();

            List<Evento> lista = port.listarEventos();
        %>

      
            <!-- Modal Actualizar Cliente -->
            <div class="modal fade" id="modalActualizarCliente" tabindex="-1" aria-labelledby="modalActualizarClienteLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <form action="<%= request.getContextPath()%>/ClienteController?action=update" method="post">
                            <div class="modal-header">
                                <h5 class="modal-title" id="modalActualizarClienteLabel">Actualizar Cliente</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Cerrar"></button>
                            </div>
                            <div class="modal-body">
                                <!-- Campos ocultos -->
                                <input type="hidden" name="idClienteu" id="idCliente">
                                <input type="hidden" name="idTipou" id="idTipou">
                                <input type="hidden" name="passwordu" id="passwordu">

                                <!-- Campos visibles -->
                                <div class="mb-3">
                                    <label for="dniu" class="form-label">DNI</label>
                                    <input type="text" class="form-control" name="dniu" id="dniu" required>
                                </div>
                                <div class="mb-3">
                                    <label for="nombreu" class="form-label">Nombre</label>
                                    <input type="text" class="form-control" name="nombreu" id="nombreu" required>
                                </div>
                                <div class="mb-3">
                                    <label for="apellidou" class="form-label">Apellido</label>
                                    <input type="text" class="form-control" name="apellidou" id="apellidou" required>
                                </div>
                                <div class="mb-3">
                                    <label for="emailu" class="form-label">Email</label>
                                    <input type="email" class="form-control" name="emailu" id="emailu" required>
                                </div>
                                <div class="mb-3">
                                    <label for="telefonou" class="form-label">Teléfono</label>
                                    <input type="text" class="form-control" name="telefonou" id="telefonou">
                                </div>
                                <div class="mb-3">
                                    <label for="direccionu" class="form-label">Dirección</label>
                                    <input type="text" class="form-control" name="direccionu" id="direccionu">
                                </div>
                                <div class="mb-3">
                                    <label for="verificadou" class="form-label">Verificado</label>
                                    <select class="form-select" name="verificadou" id="verificadou">
                                        <option value="1">Sí</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                                <button type="submit" class="btn btn-primary">Actualizar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

  <div class="content">


             <div class="d-flex justify-content-center align-items-center" style="height: 100vh;">
            <div class="card border-0" style="min-height: 100vh; width: 100%;">

                        <div class="card-header bg-secondary text-white d-flex justify-content-between align-items-center">
                            <h3 class="mb-0">Lista de clientes</h3>
                            <button class="btn btn-light" data-bs-toggle="modal" data-bs-target="#">
                                <i class="bi bi-peaple fs-3"></i>
                            </button>
                        </div>



                        <div class="card-body p-5">


                            <div class="card-body p-2">
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover table-sm align-middle text-center mb-0">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>DNI</th>
                                                <th>Nombre</th>
                                                <th>Apellido</th>
                                                <th>Email</th>
                                                <th>Teléfono</th>
                                                <th>Dirección</th>
                                                <th>Tipo</th>
                                                <th>Verificado</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                mCliente mc = new mCliente();
                                                List<Cliente> datos = mc.listarClientes();

                                                if (datos != null && !datos.isEmpty()) {
                                                    for (Cliente c : datos) {
                                            %>
                                            <tr>
                                                <td><%= c.getIdCliente()%></td>
                                                <td class="<%= (c.getDni() == null || c.getDni().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getDni() == null || c.getDni().isEmpty()) ? "Campo vacío" : c.getDni()%>
                                                </td>
                                                <td class="<%= (c.getNombre() == null || c.getNombre().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getNombre() == null || c.getNombre().isEmpty()) ? "Campo vacío" : c.getNombre()%>
                                                </td>
                                                <td class="<%= (c.getApellido() == null || c.getApellido().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getApellido() == null || c.getApellido().isEmpty()) ? "Campo vacío" : c.getApellido()%>
                                                </td>
                                                <td class="<%= (c.getEmail() == null || c.getEmail().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getEmail() == null || c.getEmail().isEmpty()) ? "Campo vacío" : c.getEmail()%>
                                                </td>
                                                <td class="<%= (c.getTelefono() == null || c.getTelefono().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getTelefono() == null || c.getTelefono().isEmpty()) ? "Campo vacío" : c.getTelefono()%>
                                                </td>
                                                <td class="<%= (c.getDireccion() == null || c.getDireccion().isEmpty()) ? "bg-warning" : ""%>">
                                                    <%= (c.getDireccion() == null || c.getDireccion().isEmpty()) ? "Campo vacío" : c.getDireccion()%>
                                                </td>
                                                <td>
                                                    <%= c.getIdTipo() == 1 ? "Empleado" : "Cliente"%>
                                                </td>

                                                <td>
                                                    <%
                                                        if (c.isVerificado()) {
                                                    %>
                                                    Sí
                                                    <%
                                                    } else {
                                                    %>

                                                    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

                                                    <form action="<%= request.getContextPath()%>/VerificarClienteServlet?action=validate" method="post" style="display:inline;">
                                                        <input type="hidden" name="id" value="<%= c.getIdCliente()%>">
                                                        <button type="button" class="btn btn-outline-secondary btn-sm ms-2" 
                                                                onclick="confirmarVerificacion(this)">
                                                            Autenticar
                                                        </button>
                                                    </form>

                                                    <script>
                                                        function confirmarVerificacion(button) {
                                                            Swal.fire({
                                                                title: '¿Estás seguro?',
                                                                text: "El cliente será verificado",
                                                                icon: 'warning',
                                                                showCancelButton: true,
                                                                confirmButtonColor: '#3085d6',
                                                                cancelButtonColor: '#d33',
                                                                confirmButtonText: 'Sí, verificar',
                                                                cancelButtonText: 'Cancelar'
                                                            }).then((result) => {
                                                                if (result.isConfirmed) {
                                                                    // Obtener el form padre y enviarlo
                                                                    button.closest('form').submit();
                                                                }
                                                            });
                                                        }
                                                    </script>


                                                    <%
                                                        }
                                                    %>
                                                </td>

                                                <td>
                                                    <button type="button" 
                                                            class="btn btn-outline-info btn-sm mb-1" 
                                                            data-bs-toggle="modal" 
                                                            data-bs-target="#modalActualizarCliente"
                                                            data-id="<%= c.getIdCliente()%>"
                                                            data-idtipo="<%= c.getIdTipo()%>"
                                                            data-dni="<%= c.getDni()%>"
                                                            data-nombre="<%= c.getNombre()%>"
                                                            data-apellido="<%= c.getApellido()%>"
                                                            data-email="<%= c.getEmail()%>"
                                                            data-password="<%= c.getPassword()%>"
                                                            data-telefono="<%= c.getTelefono()%>"
                                                            data-direccion="<%= c.getDireccion()%>"
                                                            data-verificado="<%= c.isVerificado() ? 1 : 0%>">
                                                        <i class="bi bi-pencil"></i>
                                                    </button>



                                                    <form action="<%= request.getContextPath()%>/ClienteController?action=delete" method="post" style="display:inline;" onsubmit="return confirm('¿Seguro que deseas eliminar este cliente?');">
                                                        <input type="hidden" name="idd" value="<%= c.getIdCliente()%>">
                                                        <button type="submit" class="btn btn-outline-danger btn-sm mb-1">
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
                                                <td colspan="10" class="text-center">No hay clientes registrados</td>
                                            </tr>
                                            <% }%>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>







            </div>

            </div>


            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var modal = document.getElementById('modalActualizarCliente');

                    modal.addEventListener('show.bs.modal', function (event) {
                        var button = event.relatedTarget; // Botón que abrió el modal

                        // Obtener los datos del cliente desde data-attributes
                        var idCliente = button.getAttribute('data-id');
                        var idTipo = button.getAttribute('data-idtipo');
                        var dni = button.getAttribute('data-dni');
                        var nombre = button.getAttribute('data-nombre');
                        var apellido = button.getAttribute('data-apellido');
                        var email = button.getAttribute('data-email');
                        var password = button.getAttribute('data-password');
                        var telefono = button.getAttribute('data-telefono');
                        var direccion = button.getAttribute('data-direccion');
                        var verificado = button.getAttribute('data-verificado');

                        // Setear valores en los inputs del modal
                        modal.querySelector('#idCliente').value = idCliente;
                        modal.querySelector('#idTipou').value = idTipo;
                        modal.querySelector('#dniu').value = dni;
                        modal.querySelector('#nombreu').value = nombre;
                        modal.querySelector('#apellidou').value = apellido;
                        modal.querySelector('#emailu').value = email;
                        modal.querySelector('#passwordu').value = password;
                        modal.querySelector('#telefonou').value = telefono;
                        modal.querySelector('#direccionu').value = direccion;
                        modal.querySelector('#verificadou').value = verificado;
                    });
                });
            </script>






            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <script src="../vistaMenu/scriptMenu.js" type="text/javascript"></script>
            <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </body>




</html>
