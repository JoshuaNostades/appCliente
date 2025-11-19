
<!-- Bootstrap 5 CSS y JS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">





<div class="d-flex flex-column p-3 bg-dark text-light" style="width: 100%; height: 100%;">


    <div href="#" class="align-items-center text-center">
        <i class="bi bi-person-circle fs-1 me-2 text-light"></i>

    </div>
    <div href="#" class="align-items-center text-center">

        <span class="fs-2 fw-semibold text-light text-center">Eventos Peru</span>
    </div>

    <div class="text-muted mb-3 text-center fs-7 fw-semibold">

        <a class="text-light text-center">

        </a>


    </div>
    <hr>

    <ul class="nav nav-pills flex-column gap-1" >




        <li class="nav-item">
            <a class="nav-link d-flex justify-content-between align-items-center text-light px-3 py-2"
               data-bs-toggle="collapse" href="#gestionMenu" role="button" aria-expanded="false" aria-controls="gestionMenu">
                <span><i class="bi bi-gear me-2"></i>Sistema</span>
                <i class="bi bi-chevron-down"></i>
            </a>
            <div class="collapse" id="gestionMenu">
                <ul class="nav flex-column ms-4">
                    <li><a href="vInicio.jsp" class="nav-link text-light px-3 py-1"><i class="bi bi-chat-dots me-2"></i> Inicio</a></li>


                </ul>
            </div>
        </li>


        <!-- Menú Proveedores -->
<li class="nav-item">
    <a class="nav-link d-flex justify-content-between align-items-center text-light px-3 py-2"
       data-bs-toggle="collapse" href="#proveedoresMenu" role="button" aria-expanded="false" aria-controls="proveedoresMenu">
        <span><i class="bi bi-ticket-perforated-fill me-2"></i> Proveedores</span>
        <i class="bi bi-chevron-down"></i>
    </a>
    <div class="collapse" id="proveedoresMenu">
        <ul class="nav flex-column ms-4">
            <li><a href="vListaProveedores.jsp" class="nav-link text-light px-3 py-1"><i class="bi bi-person-plus me-2"></i> Lista</a></li>
        </ul>
    </div>
</li>

<!-- Menú Clientes -->
<li class="nav-item">
    <a class="nav-link d-flex justify-content-between align-items-center text-light px-3 py-2"
       data-bs-toggle="collapse" href="#clientesMenu" role="button" aria-expanded="false" aria-controls="clientesMenu">
        <span><i class="bi bi-ticket-perforated-fill me-2"></i> Clientes</span>
        <i class="bi bi-chevron-down"></i>
    </a>
    <div class="collapse" id="clientesMenu">
        <ul class="nav flex-column ms-4">
            <li><a href="vListarCliente.jsp" class="nav-link text-light px-3 py-1"><i class="bi bi-person-plus me-2"></i> Lista</a></li>
        </ul>
    </div>
</li>








        <%-- CERRAR SESIÓN: todos los roles --%>
        <li class="nav-item mt-3">
            <a href="<%= request.getContextPath()%>/CerrarSesionController" class="nav-link d-flex align-items-center px-3 py-2 text-light">
                <i class="bi bi-box-arrow-right me-2"></i> Cerrar sesión
            </a>
        </li>
    </ul>
</div>