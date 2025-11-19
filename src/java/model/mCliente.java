/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import services.Cliente;

/**
 *
 * @author JOSHUA
 */
public class mCliente {

    public mCliente() {
    }
    
    Cliente d = new Cliente();
    

    public static boolean registrarCliente(java.lang.String dni, java.lang.String nombre, java.lang.String apellido, java.lang.String email, java.lang.String password, java.lang.String telefono, java.lang.String direccion) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.registrarCliente(dni, nombre, apellido, email, password, telefono, direccion);
    }

    public static boolean loginCliente(java.lang.String email, java.lang.String password) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.loginCliente(email, password);
    }

    public static java.util.List<services.Cliente> listarClientes() {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.listarClientes();
    }

    public static boolean actualizarCliente(int idCliente, int idTipo, java.lang.String dni, java.lang.String nombre, java.lang.String apellido, java.lang.String email, java.lang.String password, java.lang.String telefono, java.lang.String direccion, boolean verificado) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.actualizarCliente(idCliente, idTipo, dni, nombre, apellido, email, password, telefono, direccion, verificado);
    }
    
    

    public static boolean verificarCliente(int idCliente) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.verificarCliente(idCliente);
    }

    public static Cliente obtenerClientePorEmail(java.lang.String email) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.obtenerClientePorEmail(email);
    }

    public static boolean eliminarCliente(int idCliente) {
        services.ServicioCliente_Service service = new services.ServicioCliente_Service();
        services.ServicioCliente port = service.getServicioClientePort();
        return port.eliminarCliente(idCliente);
    }

  
    

    
   
    
    
    
    
    
}
