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
import model.mEmpleado;
import services.Cliente;
import services.Empleado;

/**
 *
 * @author JOSHUA
 */
@WebServlet(name = "EmpleadoController", urlPatterns = {"/EmpleadoController"})
public class EmpleadoController extends HttpServlet {

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
            out.println("<title>Servlet EmpleadoController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EmpleadoController at " + request.getContextPath() + "</h1>");
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
        mEmpleado servicioEmpleado = new mEmpleado();

        switch (action) {
            case "login":

                String email = request.getParameter("username");
                String password = request.getParameter("password");

                //String email = "juan.perez@example.com";
                //String password = "123456";
                System.out.println("Email: " + email);
                System.out.println("Password: " + password);

                boolean exito = servicioEmpleado.login(email, password);

                if (exito) {

                    Empleado emp = servicioEmpleado.obtenerEmpleadoPorEmail(email);

                    HttpSession session = request.getSession();

                    session.setAttribute("empleado", emp);
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vListEmpleado.jsp?login=ok");
                } else {
                    response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vLogin.jsp?login=error");
                }

                break;
                
                
                case "delete":

                String idEliminar = request.getParameter("id_empleado");

                if (idEliminar == null || idEliminar.trim().isEmpty()) {
                    response.getWriter().println("❌ ID de empleado no recibido.");
                    return;
                }

                mEmpleado daoE = new mEmpleado();

                try {
                   
                 
                    

                    // 3️⃣ Eliminar habitación de la BD
                    boolean eliminado = daoE.eliminarEmpleado(Integer.parseInt(idEliminar));

                    if (eliminado) {
                        response.sendRedirect(request.getContextPath() +"/vistaEmpleado/vListEmpleado.jsp?delete=ok");
                    } else {
                        response.sendRedirect(request.getContextPath() +"/vistaEmpleado/vListEmpleado.jsp?delete=error");
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                    response.getWriter().println("❌ Error al eliminar habitación: " + e.getMessage());
                }

                break;

            default:
                response.sendRedirect(request.getContextPath() + "/vistaEmpleado/vLogin.jsp?login=error");
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

}
