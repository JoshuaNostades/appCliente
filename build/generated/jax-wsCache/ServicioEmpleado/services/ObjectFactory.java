
package services;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the services package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _ObtenerNombreApellidoResponse_QNAME = new QName("http://services/", "obtenerNombreApellidoResponse");
    private final static QName _ActualizarEmpleado_QNAME = new QName("http://services/", "actualizarEmpleado");
    private final static QName _ObtenerEmpleadoPorEmailResponse_QNAME = new QName("http://services/", "obtenerEmpleadoPorEmailResponse");
    private final static QName _EliminarEmpleadoResponse_QNAME = new QName("http://services/", "eliminarEmpleadoResponse");
    private final static QName _ListarEmpleadosResponse_QNAME = new QName("http://services/", "listarEmpleadosResponse");
    private final static QName _RegistrarEmpleado_QNAME = new QName("http://services/", "registrarEmpleado");
    private final static QName _EliminarEmpleado_QNAME = new QName("http://services/", "eliminarEmpleado");
    private final static QName _ListarEmpleados_QNAME = new QName("http://services/", "listarEmpleados");
    private final static QName _ObtenerEmpleadoPorEmail_QNAME = new QName("http://services/", "obtenerEmpleadoPorEmail");
    private final static QName _ActualizarEmpleadoResponse_QNAME = new QName("http://services/", "actualizarEmpleadoResponse");
    private final static QName _Login_QNAME = new QName("http://services/", "login");
    private final static QName _ObtenerNombreApellido_QNAME = new QName("http://services/", "obtenerNombreApellido");
    private final static QName _LoginResponse_QNAME = new QName("http://services/", "loginResponse");
    private final static QName _ObtenerEmpleadoPorIdResponse_QNAME = new QName("http://services/", "obtenerEmpleadoPorIdResponse");
    private final static QName _ObtenerEmpleadoPorId_QNAME = new QName("http://services/", "obtenerEmpleadoPorId");
    private final static QName _RegistrarEmpleadoResponse_QNAME = new QName("http://services/", "registrarEmpleadoResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: services
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ObtenerEmpleadoPorIdResponse }
     * 
     */
    public ObtenerEmpleadoPorIdResponse createObtenerEmpleadoPorIdResponse() {
        return new ObtenerEmpleadoPorIdResponse();
    }

    /**
     * Create an instance of {@link LoginResponse }
     * 
     */
    public LoginResponse createLoginResponse() {
        return new LoginResponse();
    }

    /**
     * Create an instance of {@link RegistrarEmpleadoResponse }
     * 
     */
    public RegistrarEmpleadoResponse createRegistrarEmpleadoResponse() {
        return new RegistrarEmpleadoResponse();
    }

    /**
     * Create an instance of {@link ObtenerEmpleadoPorId }
     * 
     */
    public ObtenerEmpleadoPorId createObtenerEmpleadoPorId() {
        return new ObtenerEmpleadoPorId();
    }

    /**
     * Create an instance of {@link EliminarEmpleado }
     * 
     */
    public EliminarEmpleado createEliminarEmpleado() {
        return new EliminarEmpleado();
    }

    /**
     * Create an instance of {@link ListarEmpleados }
     * 
     */
    public ListarEmpleados createListarEmpleados() {
        return new ListarEmpleados();
    }

    /**
     * Create an instance of {@link ActualizarEmpleadoResponse }
     * 
     */
    public ActualizarEmpleadoResponse createActualizarEmpleadoResponse() {
        return new ActualizarEmpleadoResponse();
    }

    /**
     * Create an instance of {@link Login }
     * 
     */
    public Login createLogin() {
        return new Login();
    }

    /**
     * Create an instance of {@link ObtenerNombreApellido }
     * 
     */
    public ObtenerNombreApellido createObtenerNombreApellido() {
        return new ObtenerNombreApellido();
    }

    /**
     * Create an instance of {@link ObtenerEmpleadoPorEmail }
     * 
     */
    public ObtenerEmpleadoPorEmail createObtenerEmpleadoPorEmail() {
        return new ObtenerEmpleadoPorEmail();
    }

    /**
     * Create an instance of {@link RegistrarEmpleado }
     * 
     */
    public RegistrarEmpleado createRegistrarEmpleado() {
        return new RegistrarEmpleado();
    }

    /**
     * Create an instance of {@link EliminarEmpleadoResponse }
     * 
     */
    public EliminarEmpleadoResponse createEliminarEmpleadoResponse() {
        return new EliminarEmpleadoResponse();
    }

    /**
     * Create an instance of {@link ListarEmpleadosResponse }
     * 
     */
    public ListarEmpleadosResponse createListarEmpleadosResponse() {
        return new ListarEmpleadosResponse();
    }

    /**
     * Create an instance of {@link ActualizarEmpleado }
     * 
     */
    public ActualizarEmpleado createActualizarEmpleado() {
        return new ActualizarEmpleado();
    }

    /**
     * Create an instance of {@link ObtenerEmpleadoPorEmailResponse }
     * 
     */
    public ObtenerEmpleadoPorEmailResponse createObtenerEmpleadoPorEmailResponse() {
        return new ObtenerEmpleadoPorEmailResponse();
    }

    /**
     * Create an instance of {@link ObtenerNombreApellidoResponse }
     * 
     */
    public ObtenerNombreApellidoResponse createObtenerNombreApellidoResponse() {
        return new ObtenerNombreApellidoResponse();
    }

    /**
     * Create an instance of {@link Empleado }
     * 
     */
    public Empleado createEmpleado() {
        return new Empleado();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerNombreApellidoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerNombreApellidoResponse")
    public JAXBElement<ObtenerNombreApellidoResponse> createObtenerNombreApellidoResponse(ObtenerNombreApellidoResponse value) {
        return new JAXBElement<ObtenerNombreApellidoResponse>(_ObtenerNombreApellidoResponse_QNAME, ObtenerNombreApellidoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarEmpleado }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarEmpleado")
    public JAXBElement<ActualizarEmpleado> createActualizarEmpleado(ActualizarEmpleado value) {
        return new JAXBElement<ActualizarEmpleado>(_ActualizarEmpleado_QNAME, ActualizarEmpleado.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleadoPorEmailResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEmpleadoPorEmailResponse")
    public JAXBElement<ObtenerEmpleadoPorEmailResponse> createObtenerEmpleadoPorEmailResponse(ObtenerEmpleadoPorEmailResponse value) {
        return new JAXBElement<ObtenerEmpleadoPorEmailResponse>(_ObtenerEmpleadoPorEmailResponse_QNAME, ObtenerEmpleadoPorEmailResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarEmpleadoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarEmpleadoResponse")
    public JAXBElement<EliminarEmpleadoResponse> createEliminarEmpleadoResponse(EliminarEmpleadoResponse value) {
        return new JAXBElement<EliminarEmpleadoResponse>(_EliminarEmpleadoResponse_QNAME, EliminarEmpleadoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEmpleadosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarEmpleadosResponse")
    public JAXBElement<ListarEmpleadosResponse> createListarEmpleadosResponse(ListarEmpleadosResponse value) {
        return new JAXBElement<ListarEmpleadosResponse>(_ListarEmpleadosResponse_QNAME, ListarEmpleadosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarEmpleado }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "registrarEmpleado")
    public JAXBElement<RegistrarEmpleado> createRegistrarEmpleado(RegistrarEmpleado value) {
        return new JAXBElement<RegistrarEmpleado>(_RegistrarEmpleado_QNAME, RegistrarEmpleado.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarEmpleado }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarEmpleado")
    public JAXBElement<EliminarEmpleado> createEliminarEmpleado(EliminarEmpleado value) {
        return new JAXBElement<EliminarEmpleado>(_EliminarEmpleado_QNAME, EliminarEmpleado.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEmpleados }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarEmpleados")
    public JAXBElement<ListarEmpleados> createListarEmpleados(ListarEmpleados value) {
        return new JAXBElement<ListarEmpleados>(_ListarEmpleados_QNAME, ListarEmpleados.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleadoPorEmail }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEmpleadoPorEmail")
    public JAXBElement<ObtenerEmpleadoPorEmail> createObtenerEmpleadoPorEmail(ObtenerEmpleadoPorEmail value) {
        return new JAXBElement<ObtenerEmpleadoPorEmail>(_ObtenerEmpleadoPorEmail_QNAME, ObtenerEmpleadoPorEmail.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarEmpleadoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarEmpleadoResponse")
    public JAXBElement<ActualizarEmpleadoResponse> createActualizarEmpleadoResponse(ActualizarEmpleadoResponse value) {
        return new JAXBElement<ActualizarEmpleadoResponse>(_ActualizarEmpleadoResponse_QNAME, ActualizarEmpleadoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Login }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "login")
    public JAXBElement<Login> createLogin(Login value) {
        return new JAXBElement<Login>(_Login_QNAME, Login.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerNombreApellido }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerNombreApellido")
    public JAXBElement<ObtenerNombreApellido> createObtenerNombreApellido(ObtenerNombreApellido value) {
        return new JAXBElement<ObtenerNombreApellido>(_ObtenerNombreApellido_QNAME, ObtenerNombreApellido.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "loginResponse")
    public JAXBElement<LoginResponse> createLoginResponse(LoginResponse value) {
        return new JAXBElement<LoginResponse>(_LoginResponse_QNAME, LoginResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleadoPorIdResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEmpleadoPorIdResponse")
    public JAXBElement<ObtenerEmpleadoPorIdResponse> createObtenerEmpleadoPorIdResponse(ObtenerEmpleadoPorIdResponse value) {
        return new JAXBElement<ObtenerEmpleadoPorIdResponse>(_ObtenerEmpleadoPorIdResponse_QNAME, ObtenerEmpleadoPorIdResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEmpleadoPorId }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEmpleadoPorId")
    public JAXBElement<ObtenerEmpleadoPorId> createObtenerEmpleadoPorId(ObtenerEmpleadoPorId value) {
        return new JAXBElement<ObtenerEmpleadoPorId>(_ObtenerEmpleadoPorId_QNAME, ObtenerEmpleadoPorId.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarEmpleadoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "registrarEmpleadoResponse")
    public JAXBElement<RegistrarEmpleadoResponse> createRegistrarEmpleadoResponse(RegistrarEmpleadoResponse value) {
        return new JAXBElement<RegistrarEmpleadoResponse>(_RegistrarEmpleadoResponse_QNAME, RegistrarEmpleadoResponse.class, null, value);
    }

}
