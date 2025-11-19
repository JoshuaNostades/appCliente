<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Registro de Cliente</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                display: flex;
                flex-direction: column;
                min-height: 100vh;
                background-color: #f3f4f6;
            }

            /* ENCABEZADO */
            header {
                background-color: #2b2b2b;
                color: #fff;
                padding: 15px 40px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            header h1 {
                font-size: 22px;
                font-weight: 600;
            }

            nav ul {
                list-style: none;
                display: flex;
                gap: 25px;
            }

            nav ul li a {
                text-decoration: none;
                color: #cfcfcf;
                font-size: 14px;
                transition: color 0.3s;
            }

            nav ul li a:hover {
                color: #ffffff;
            }

            /* CONTENEDOR PRINCIPAL */
            .contenedor {
                display: flex;
                flex: 1;
                max-width: 1200px;
                width: 100%;
                margin: 40px auto;
                background: #ffffff;
                border-radius: 12px;
                overflow: hidden;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
                height: 620px;
            }

            /* PANEL IZQUIERDO */
            .lado-izquierdo {
                background: linear-gradient(135deg, #476e9e, #304c89);
                color: #fff;
                flex: 0.35;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                padding: 40px;
            }

            .lado-izquierdo h2 {
                font-size: 26px;
                font-weight: 500;
                text-align: center;
                margin-bottom: 15px;
            }

            .lado-izquierdo p {
                font-size: 14px;
                text-align: center;
                opacity: 0.9;
            }

            .lado-izquierdo img {
                width: 80%;
                max-width: 280px;
                margin-top: 25px;
            }

            /* PANEL DERECHO */
            .lado-derecho {
                flex: 0.65;
                padding: 45px;
                overflow-y: auto;
                display: flex;
                flex-direction: column;
                justify-content: center;
            }

            .lado-derecho h3 {
                margin-bottom: 25px;
                font-size: 20px;
                color: #1f2937;
                font-weight: 600;
            }

            form {
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 20px 25px;
            }

            form label {
                font-weight: 500;
                font-size: 13px;
                color: #333;
                display: block;
                margin-bottom: 5px;
            }

            form input, form select {
                width: 100%;
                padding: 12px;
                font-size: 13px;
                border: 1px solid #ccc;
                border-radius: 6px;
                background: #f9fafb;
                transition: all 0.3s;
            }

            form input:focus, form select:focus {
                border-color: #304c89;
                background: #ffffff;
                box-shadow: 0 0 0 3px rgba(48, 76, 137, 0.1);
                outline: none;
            }

            .full-width {
                grid-column: span 2;
            }

            .verificado {
                grid-column: span 2;
                display: flex;
                flex-direction: column;
            }

            .verificado input {
                background-color: #e5e7eb;
                cursor: not-allowed;
                color: #6b7280;
            }

            .alerta {
                font-size: 12px;
                color: #b91c1c;
                background-color: #fee2e2;
                padding: 8px 10px;
                border-radius: 6px;
                margin-top: 5px;
                border: 1px solid #fecaca;
            }

            button {
                grid-column: span 2;
                background-color: #304c89;
                color: white;
                border: none;
                padding: 14px;
                border-radius: 6px;
                font-size: 15px;
                cursor: pointer;
                transition: background-color 0.3s;
                margin-top: 10px;
            }

            button:hover {
                background-color: #22365f;
            }

            /* FOOTER */
            footer {
                background-color: #1c1c1c;
                color: #bbb;
                text-align: center;
                padding: 18px 0;
                font-size: 13px;
                margin-top: auto;
            }

        </style>
    </head>
    <body>

        <header>
            <h1>EVENTOS PERU</h1>
            <nav>
                <ul>
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="vLoginCliente.jsp">¿Ya tienes una cuenta? Inicia sesion ahora mismo aqui</a></li>

                </ul>
            </nav>
        </header>

        <div class="contenedor">
            <div class="lado-izquierdo">
                <h2>Regístrate y forma parte</h2>
                <p>Accede a nuestros servicios exclusivos de forma segura y rápida.</p>
                <img src="<%= request.getContextPath()%>/images/imgCelb.png" alt="Eventos">

            </div>

            <div class="lado-derecho">
                <h3 class="text-center justify-content-center">Bienvenido, Forma parte de maravillosos eventos registrandote</h3>

                <form action="<%= request.getContextPath()%>/ClienteController?action=add" method="post">
                    <div>
                        <label for="dni">DNI</label>
                        <input type="text" name="dni" id="dni" maxlength="8" required>
                    </div>

                    <div>
                        <label for="telefono">Teléfono</label>
                        <input type="text" name="telefono" id="telefono">
                    </div>

                    <div>
                        <label for="nombre">Nombre</label>
                        <input type="text" name="nombre" id="nombre" required>
                    </div>

                    <div>
                        <label for="apellido">Apellido</label>
                        <input type="text" name="apellido" id="apellido" required>
                    </div>

                    <div class="full-width">
                        <label for="email">Correo electrónico</label>
                        <input type="email" name="email" id="email" required>
                    </div>

                    <div class="full-width">
                        <label for="password">Contraseña</label>
                        <input type="password" name="password" id="password" required>
                    </div>

                    <div class="full-width">
                        <label for="direccion">Dirección</label>
                        <input type="text" name="direccion" id="direccion">
                    </div>

                    <div class="verificado">
                        <label for="verificado">Verificación</label>
                        <input type="text" id="verificado" name="verificado" value="Sin verificación" disabled>
                        <div class="alerta">⚠ Su cuenta aún no está verificada. Un administrador debe activarla.</div>
                    </div>

                    <button type="submit">Registrarme</button>


                </form>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

        <%
            String add = request.getParameter("add");
        %>

        <% if ("ok".equals(add)) {%>
        <script>
            Swal.fire({
                icon: 'success',
                title: 'Registro exitoso',
                text: 'Tu cuenta ha sido creada correctamente.',
                confirmButtonColor: '#3085d6',
                timer: 2000, // ⏳ 2 segundos
                timerProgressBar: true
            }).then(() => {
                window.location.href = '<%= request.getContextPath()%>/vistaCliente/vLoginCliente.jsp';
            });
        </script>
        <% } %>

        <% if ("error".equals(add)) {%>
        <script>
            Swal.fire({
                icon: 'error',
                title: 'Error en el registro',
                text: 'No se pudo completar el registro.',
                confirmButtonColor: '#d33',
                timer: 2500, // ⏳ 2.5 segundos
                timerProgressBar: true
            }).then(() => {
                window.location.href = '<%= request.getContextPath()%>/vistaCliente/vRegisterCliente.jsp';
            });
        </script>
        <% }%>



    </body>
</html>
