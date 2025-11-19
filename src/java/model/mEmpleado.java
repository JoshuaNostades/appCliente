package model;

import services.Empleado;

public class mEmpleado {

    public mEmpleado() {
    }

    public static boolean login(java.lang.String email, java.lang.String password) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.login(email, password);
    }

    public static boolean actualizarEmpleado(int idEmpleado, int idTipo, java.lang.String dni, java.lang.String nombre, java.lang.String apellido, java.lang.String email, java.lang.String password, java.lang.String telefono, java.lang.String estado) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.actualizarEmpleado(idEmpleado, idTipo, dni, nombre, apellido, email, password, telefono, estado);
    }

    public static boolean eliminarEmpleado(int idEmpleado) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.eliminarEmpleado(idEmpleado);
    }

    public static java.util.List<services.Empleado> listarEmpleados() {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.listarEmpleados();
    }

    public static Empleado obtenerEmpleadoPorId(int idEmpleado) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.obtenerEmpleadoPorId(idEmpleado);
    }

    public static boolean registrarEmpleado(int idTipo, java.lang.String dni, java.lang.String nombre, java.lang.String apellido, java.lang.String email, java.lang.String password, java.lang.String telefono, java.lang.String estado) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.registrarEmpleado(idTipo, dni, nombre, apellido, email, password, telefono, estado);
    }

    public static Empleado obtenerEmpleadoPorEmail(java.lang.String email) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.obtenerEmpleadoPorEmail(email);
    }

    public static String obtenerNombreApellido(int idEmpleado) {
        services.ServicioEmpleado_Service service = new services.ServicioEmpleado_Service();
        services.ServicioEmpleado port = service.getServicioEmpleadoPort();
        return port.obtenerNombreApellido(idEmpleado);
    }
    
    

    
    
    

}
