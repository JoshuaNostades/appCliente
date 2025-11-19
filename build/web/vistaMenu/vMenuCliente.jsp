
<%@page import="services.Cliente"%>
<%@ page contentType="text/html; charset=UTF-8" %>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<link href="styleMenu.css" rel="stylesheet" type="text/css"/>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<!-- DataTables CSS y JS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.13.7/css/dataTables.bootstrap5.min.css">
<script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">





<div id="sidebar" class="shadow">
    <%

        Cliente t = (Cliente) session.getAttribute("cliente");
        if (t == null) {
            response.sendRedirect("../index.jsp"); // Redirige si no hay sesión
            return;
        }
    %>

    <div class="profile-section">
        <img src="https://cdn-icons-png.flaticon.com/512/3177/3177440.png"
             alt="Avatar"
             style="width: 60px; height: 60px; border-radius: 50%; border: 3px solid #ddd; padding: 2px; object-fit: cover;">

        <div class="profile-info">
            <h6 class="mb-1"><%= t.getNombre() + " " + t.getApellido()%></h6>
            <p class="mb-1 text-secondary">
                Cargo: 
                <%= (t.getIdTipo() == 1) ? "Empleado" : "Cliente"%>
            </p>

            <p class="mb-0 text-primary"><i class="bi bi-envelope-fill me-1"></i><%= t.getEmail()%></p>
        </div>
    </div>



    <!-- NAV -->
    <nav class="sidebar-nav nav flex-column px-1" id="sidebarNav">


        <a class="nav-link" href="<%= request.getContextPath()%>/vistaCliente/vInicio.jsp">
            <i class="bi bi-house-door-fill"></i>
            <span class="label">Inicio</span>
        </a>

        <a class="nav-link" href="<%= request.getContextPath()%>/vistaCliente/vEventos.jsp">
            <i class="bi bi-calendar-event-fill"></i>
            <span class="label">Eventos generales</span>
        </a>

       

        <a class="nav-link" href="<%= request.getContextPath()%>/vistaCliente/vParticipaciones.jsp">
            <i class="bi bi-people-fill"></i>
            <span class="label">Participaciones</span>
        </a>

   

        <a class="nav-link" href="<%= request.getContextPath()%>/vistaCliente/vConfigUser.jsp">
            <i class="bi bi-person-circle"></i>
            <span class="label">Perfil</span>
        </a>


        <a href="#" class="nav-link" onclick="confirmLogout()">
            <i class="bi bi-box-arrow-right"></i>
            <span class="label">Cerrar sesión</span>
        </a>
    </nav>

    <div id="toggle-btn" title="Fijar / Soltar">
        <i class="bi bi-pin-angle" id="pinIcon"></i>
    </div>
</div>

<script src="scriptMenu.js" type="text/javascript"></script>


<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
            function confirmLogout() {
                Swal.fire({
                    title: '¿Cerrar sesión?',
                    text: "¿Estás seguro de que deseas salir del sistema?",
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#d33',
                    cancelButtonColor: '#3085d6',
                    confirmButtonText: 'Sí, salir',
                    cancelButtonText: 'Cancelar',
                    reverseButtons: true
                }).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = '<%= request.getContextPath()%>/ServletSignOut';
                    }
                })
            }
</script>
