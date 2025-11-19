/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.mCliente;
import model.mEmpleado;
import services.Cliente;
import services.ServicioCliente;

/**
 *
 * @author JOSHUA
 */
@WebServlet(name = "ClienteController", urlPatterns = {"/ClienteController"})
public class ClienteController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ClienteController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ClienteController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        mCliente servicio = new mCliente();

        switch (action) {
            case "add":

                String dni = request.getParameter("dni");
                String nombre = request.getParameter("nombre");
                String apellido = request.getParameter("apellido");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String telefono = request.getParameter("telefono");
                String direccion = request.getParameter("direccion");

                // Llamamos al servicio web
                boolean exito = servicio.registrarCliente(dni,
                        nombre,
                        apellido,
                        email,
                        password,
                        telefono,
                        direccion);

                if (exito) {
                    response.sendRedirect(request.getContextPath() + "/vistaCliente/vRegisterCliente.jsp?add=ok");
                } else {
                    response.sendRedirect(request.getContextPath() + "/vistaCliente/vRegisterCliente.jsp?add=error");
                }

                break;

            case "login":

                String emailC = request.getParameter("email");
                String passwordC = request.getParameter("password");
                String remember = request.getParameter("rememberMe");

                boolean exitoLogin = servicio.loginCliente(emailC, passwordC);

                if (exitoLogin) {

                    // Obtener cliente real desde la BD
                    Cliente cliente = servicio.obtenerClientePorEmail(emailC);

                    HttpSession sesion = request.getSession();
                    sesion.setAttribute("cliente", cliente);
                    sesion.setAttribute("userEmail", emailC);

                    // Recordar sesión 🔐
                    if ("true".equals(remember)) {
                        Cookie cookieUser = new Cookie("userEmail", emailC);
                        cookieUser.setMaxAge(60 * 60 * 24 * 7); // 7 días
                        cookieUser.setPath("/");               // 🔥 importante
                        response.addCookie(cookieUser);
                    }

                    response.sendRedirect(request.getContextPath() + "/vistaCliente/vLoginCliente.jsp?login=ok");

                } else {

                    response.sendRedirect(request.getContextPath() + "/vistaCliente/vLoginCliente.jsp?login=error");

                }
                break;

            case "update":

                actualizarCliente(request, response);
                break;

            case "delete":
                try {
                    // Obtener el id del cliente a eliminar
                    int idCliente = Integer.parseInt(request.getParameter("idd"));

                    // Llamamos al servicio web
                    boolean eli = servicio.eliminarCliente(idCliente);

                    if (eli) {
                        response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?delete=ok");
                    } else {
                        response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?delete=error");
                    }
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?delete=error404");
                }
                break;

            default:
                response.sendRedirect("vistaCliente/vLoginCliente.jsp?msg=error");
                break;
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void actualizarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            // Obtener datos del formulario
            int idCliente = Integer.parseInt(request.getParameter("idClienteu"));
            int idTipo = Integer.parseInt(request.getParameter("idTipou"));
            String dni = request.getParameter("dniu");
            String nombre = request.getParameter("nombreu");
            String apellido = request.getParameter("apellidou");
            String email = request.getParameter("emailu");
            String password = request.getParameter("passwordu");
            String telefono = request.getParameter("telefonou");
            String direccion = request.getParameter("direccionu");
            boolean verificado = "1".equals(request.getParameter("verificadou"));

            // Crear objeto Cliente
            mCliente m = new mCliente();
            // Llamar al DAO para actualizar
            boolean actualizado = m.actualizarCliente(idCliente, idTipo, dni, nombre, apellido, email, password, telefono, direccion, verificado);

            // Redirigir con mensaje de éxito o fallo
            if (actualizado) {
                response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?update=ok");
            } else {
                response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?update=error");
            }

        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListarCliente.jsp?update=error404");
        }
    }
}
