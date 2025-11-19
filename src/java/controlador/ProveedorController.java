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
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.mProveedor;

/**
 *
 * @author JOSHUA
 */
@WebServlet(name = "ProveedorController", urlPatterns = {"/ProveedorController"})
public class ProveedorController extends HttpServlet {

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
            out.println("<title>Servlet ProveedorController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProveedorController at " + request.getContextPath() + "</h1>");
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
        mProveedor serv = new mProveedor();

        switch (action) {
            case "add":

                int idEmpleado = Integer.parseInt(request.getParameter("idEmpleado"));
                String nombreEmpresa = request.getParameter("nombreEmpresa");
                String ruc = request.getParameter("ruc");
                String telefono = request.getParameter("telefono");
                String email = request.getParameter("email");
                String direccion = request.getParameter("direccion");
                String serviciosOfrecidos = request.getParameter("serviciosOfrecidos");

                String califStr = request.getParameter("calificacion");
                double calificacion = 0.0;
                if (califStr != null && !califStr.isEmpty()) {
                    try {
                        calificacion = Double.parseDouble(califStr);
                    } catch (NumberFormatException e) {
                        calificacion = 0.0;
                    }
                }

                String disponibilidad = request.getParameter("disponibilidad");

                boolean exito = serv.insertarProveedor(
                        idEmpleado,
                        nombreEmpresa,
                        ruc,
                        telefono,
                        email,
                        direccion,
                        serviciosOfrecidos,
                        calificacion,
                        disponibilidad
                );

                if (exito) {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?add=ok");
                } else {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?add=error");
                }

                break;

            case "delete":

                // Obtener el id del proveedor desde el formulario
                String idStr = request.getParameter("id_proveedor");
                int idProveedor = Integer.parseInt(idStr);

                // Llamamos al servicio web para eliminar el proveedor
                boolean del = serv.eliminarProveedor(idProveedor);

                if (del) {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?delete=ok");
                } else {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?delete=ok");
                }

                break;

            case "update":

                // Obtenemos los parámetros del formulario
                int idProveedoru = Integer.parseInt(request.getParameter("idProveedor"));
                int idEmpleadou = Integer.parseInt(request.getParameter("idEmpleado"));
                String nombreEmpresau = request.getParameter("nombreEmpresa");
                String rucu = request.getParameter("ruc");
                String telefonou = request.getParameter("telefono");
                String emailu = request.getParameter("email");
                String direccionu = request.getParameter("direccion");
                String serviciosOfrecidosu = request.getParameter("serviciosOfrecidos");

                // Calificación
                String califStru = request.getParameter("calificacion");
                double calificacionu = 0.0;
                if (califStru != null && !califStru.isEmpty()) {
                    try {
                        calificacion = Double.parseDouble(califStru);
                    } catch (NumberFormatException e) {
                        calificacion = 0.0;
                    }
                }
                String disponibilidadu = request.getParameter("disponibilidad");
                // Llamamos al servicio web para actualizar
                boolean update = serv.actualizarProveedor(idProveedoru, idEmpleadou,
                        nombreEmpresau, rucu, telefonou, emailu, direccionu, serviciosOfrecidosu, calificacionu, disponibilidadu);

                if (update) {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?update=ok");
                } else {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListaProveedores.jsp?update=error");
                }

                break;

            default:

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

}
