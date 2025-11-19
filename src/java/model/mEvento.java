/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import services.Cliente;
import services.Evento;

/**
 *
 * @author JOSHUA
 */
public class mEvento {

    public static java.util.List<services.Evento> listarEventos() {
        services.ServicioEvento_Service service = new services.ServicioEvento_Service();
        services.ServicioEvento port = service.getServicioEventoPort();
        return port.listarEventos();
    }

    
    

    public static int actualizarEvento(int idEvento, int idEmpleado, int idProveedor, java.lang.String titulo, java.lang.String categoria, java.lang.String fechaEvento, java.lang.String lugar, java.lang.String estado, java.lang.String descripcion, java.lang.String imagen) {
        services.ServicioEvento_Service service = new services.ServicioEvento_Service();
        services.ServicioEvento port = service.getServicioEventoPort();
        return port.actualizarEvento(idEvento, idEmpleado, idProveedor, titulo, categoria, fechaEvento, lugar, estado, descripcion, imagen);
    }

    public static int agregarEvento(int idEmpleado, int idProveedor, java.lang.String titulo, java.lang.String categoria, java.lang.String fechaEvento, java.lang.String lugar, java.lang.String estado, java.lang.String descripcion, java.lang.String imagen) {
        services.ServicioEvento_Service service = new services.ServicioEvento_Service();
        services.ServicioEvento port = service.getServicioEventoPort();
        return port.agregarEvento(idEmpleado, idProveedor, titulo, categoria, fechaEvento, lugar, estado, descripcion, imagen);
    }

    public static int eliminarEvento(int idEvento) {
        services.ServicioEvento_Service service = new services.ServicioEvento_Service();
        services.ServicioEvento port = service.getServicioEventoPort();
        return port.eliminarEvento(idEvento);
    }

    public static Cliente obtenerClientePorEmail(java.lang.String email) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.obtenerClientePorEmail(email);
    }

    
    
    
    
}
