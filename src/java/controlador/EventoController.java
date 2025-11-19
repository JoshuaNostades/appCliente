/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import model.mEvento;
import services.Evento;

/**
 *
 * @author JOSHUA
 */
@WebServlet(name = "EventoController", urlPatterns = {"/EventoController"})
@MultipartConfig
public class EventoController extends HttpServlet {

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
            out.println("<title>Servlet EventoController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EventoController at " + request.getContextPath() + "</h1>");
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
        mEvento me = new mEvento();

        switch (action) {
            case "add":

                request.setCharacterEncoding("UTF-8");

                int idemp = Integer.parseInt(request.getParameter("idEmpleado"));
                int idpro = Integer.parseInt(request.getParameter("idProveedor"));
                String titulo = request.getParameter("titulo");
                String categoria = request.getParameter("categoria");
                String fechaEvento = request.getParameter("fechaEvento");
                String lugar = request.getParameter("lugar");
                String estado = request.getParameter("estado");
                String descripcion = request.getParameter("descripcion");

                // 1️⃣ CAPTURAR LA IMAGEN
                Part filePart = request.getPart("imagen");
                String nombreImagen = "sin-imagen.jpg";

                if (filePart != null && filePart.getSize() > 0) {

                    // Nombre real
                    String fileName = filePart.getSubmittedFileName();

                    // Crear nombre único
                    long time = System.currentTimeMillis();
                    nombreImagen = "evento_" + time + "_" + fileName;

                    // Ruta física al directorio "images" del proyecto
                    String path = getServletContext().getRealPath("/images/");

                    File uploadDir = new File(path);
                    if (!uploadDir.exists()) {
                        uploadDir.mkdir(); // Crear si no existe
                    }

                    // Guardar archivo
                    filePart.write(path + File.separator + nombreImagen);
                }

                // 2️⃣ GUARDAR EN LA BD LLAMANDO AL WS/DAO
                int add = me.agregarEvento(
                        idemp,
                        idpro,
                        titulo,
                        categoria,
                        fechaEvento,
                        lugar,
                        estado,
                        descripcion,
                        nombreImagen // AGREGAMOS LA IMAGEN AQUÍ
                );

                // 3️⃣ RESULTADO
                if (add >= 1) {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?add=ok");
                } else {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?add=error");
                }

                break;

            case "delete":

                request.setCharacterEncoding("UTF-8");

                // 1️⃣ Obtener parámetros del request y guardarlos en variables
                int idemps = Integer.parseInt(request.getParameter("id_evento"));

                int delete = me.eliminarEvento(idemps);

                // 5️⃣ Redireccionar según el resultado
                if (delete >= 1) {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?delete=ok");
                } else {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?delete=error");
                }
                break;

            case "update":

                request.setCharacterEncoding("UTF-8");

                // 1️⃣ Obtener parámetros del formulario
                int idEventou = Integer.parseInt(request.getParameter("idEventou"));
                int idEmpleadou = Integer.parseInt(request.getParameter("idEmpleadou"));
                int idProveedoru = Integer.parseInt(request.getParameter("idProveedoru"));
                String titulou = request.getParameter("titulou");
                String categoriau = request.getParameter("categoriau");
                String fechaEventou = request.getParameter("fechaEventou");
                String lugaru = request.getParameter("lugaru");
                String estadou = request.getParameter("estadou");
                String descripcionu = request.getParameter("descripcionu");

                // Imagen actual guardada en BD
                String imagenActual = request.getParameter("imagenActual");

                // 2️⃣ CAPTURAR LA NUEVA IMAGEN (si el usuario sube una)
                Part filePartU = request.getPart("imagenu");
                String nombreImagenU = imagenActual != null ? imagenActual : "sin-imagen.jpg";

                if (filePartU != null && filePartU.getSize() > 0) {

                    // Nombre real
                    String fileNameU = filePartU.getSubmittedFileName();

                    // Evitar nombres repetidos
                    long timeU = System.currentTimeMillis();
                    nombreImagenU = "evento_" + timeU + "_" + fileNameU;

                    // Ruta carpeta images
                    String pathU = getServletContext().getRealPath("/images/");
                    File uploadDirU = new File(pathU);

                    if (!uploadDirU.exists()) {
                        uploadDirU.mkdir();
                    }

                    // Guardar nueva imagen
                    filePartU.write(pathU + File.separator + nombreImagenU);
                }

                // 3️⃣ Llamar al DAO para actualizar
                int update = me.actualizarEvento(
                        idEventou,
                        idEmpleadou,
                        idProveedoru,
                        titulou,
                        categoriau,
                        fechaEventou,
                        lugaru,
                        estadou,
                        descripcionu,
                        nombreImagenU // <-- IMAGEN FINAL
                );

                // 4️⃣ Respuesta
                if (update >= 1) {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?update=ok");
                } else {
                    response.sendRedirect("vistaEmpleado/vListEvento.jsp?update=error");
                }

                break;

            default:
                response.sendRedirect("vistaEmpleado/vListEvento.jsp?default=error2");
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
