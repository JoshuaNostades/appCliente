<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registrar Proveedor</title>
    <%@ include file="Encabezado.jsp" %>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css">
</head>
<body class="bg-light">

<div class="container-fluid vh-100">
    <div class="row h-100">
        <!-- Sidebar -->
        <div class="col-md-2 bg-dark p-3">
            <%@ include file="Principal.jsp" %>
        </div>

        <!-- Main Content -->
        <div class="col-md-10 p-4">
            <div class="card h-100 shadow-lg">
                <div class="card-header bg-secondary text-white d-flex align-items-center">
                    <i class="bi bi-truck me-2 fs-3"></i>
                    <span class="fs-4">Registrar Proveedor</span>
                </div>
                <div class="card-body overflow-auto">
                    <form action="ProveedorController?action=add" method="post">

                        <div class="row g-3 mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Nombre de la Empresa</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-building"></i></span>
                                    <input type="text" class="form-control" name="nombreEmpresa" placeholder="Empresa XYZ" required>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">RUC</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-credit-card"></i></span>
                                    <input type="text" class="form-control" name="ruc" maxlength="11" placeholder="12345678901" required>
                                </div>
                            </div>
                        </div>

                        <div class="row g-3 mb-3">
                            <div class="col-md-6">
                                <label class="form-label">Teléfono</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-telephone"></i></span>
                                    <input type="text" class="form-control" name="telefono" placeholder="999-999-999">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Correo Electrónico</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="bi bi-envelope"></i></span>
                                    <input type="email" class="form-control" name="email" placeholder="correo@empresa.com">
                                </div>
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Dirección</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-geo-alt"></i></span>
                                <input type="text" class="form-control" name="direccion" placeholder="Av. Principal 123">
                            </div>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Servicios Ofrecidos</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="bi bi-list-ul"></i></span>
                                <textarea class="form-control" name="serviciosOfrecidos" rows="5" placeholder="Descripción de los servicios..."></textarea>
                            </div>
                        </div>

                        <div class="row g-3 mb-4">
                            <div class="col-md-6">
                                <label class="form-label">Calificación</label>
                                <input type="number" step="0.1" min="0" max="5" class="form-control" name="calificacion" value="0.0">
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">Disponibilidad</label>
                                <select class="form-select" name="disponibilidad">
                                    <option value="DISPONIBLE" selected>DISPONIBLE</option>
                                    <option value="NO DISPONIBLE">NO DISPONIBLE</option>
                                </select>
                            </div>
                        </div>

                        <div class="d-flex gap-3">
                            <button type="submit" class="btn btn-success flex-grow-1"><i class="bi bi-check2-circle me-2"></i>Registrar</button>
                            <button type="button" class="btn btn-secondary flex-grow-1" onclick="window.location.href='vListaProveedores.jsp'"><i class="bi bi-arrow-left-circle me-2"></i>Volver</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
