/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import services.Proveedor;

/**
 *
 * @author JOSHUA
 */
public class mProveedor {

    public mProveedor() {
    }

    public static boolean actualizarProveedor(int idProveedor, int idEmpleado, java.lang.String nombreEmpresa, java.lang.String ruc, java.lang.String telefono, java.lang.String email, java.lang.String direccion, java.lang.String serviciosOfrecidos, double calificacion, java.lang.String disponibilidad) {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.actualizarProveedor(idProveedor, idEmpleado, nombreEmpresa, ruc, telefono, email, direccion, serviciosOfrecidos, calificacion, disponibilidad);
    }

    public static boolean eliminarProveedor(int idProveedor) {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.eliminarProveedor(idProveedor);
    }

    public static boolean insertarProveedor(int idEmpleado, java.lang.String nombreEmpresa, java.lang.String ruc, java.lang.String telefono, java.lang.String email, java.lang.String direccion, java.lang.String serviciosOfrecidos, double calificacion, java.lang.String disponibilidad) {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.insertarProveedor(idEmpleado, nombreEmpresa, ruc, telefono, email, direccion, serviciosOfrecidos, calificacion, disponibilidad);
    }

    public static java.util.List<services.Proveedor> listarProveedores() {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.listarProveedores();
    }

    public static Proveedor obtenerProveedor(int idProveedor) {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.obtenerProveedor(idProveedor);
    }

    public static String obtenerNombreEmpresa(int idProveedor) {
        services.ServicioProveedor_Service service = new services.ServicioProveedor_Service();
        services.ServicioProveedor port = service.getServicioProveedorPort();
        return port.obtenerNombreEmpresa(idProveedor);
    }
    
    
    
    
    
    
    
}
