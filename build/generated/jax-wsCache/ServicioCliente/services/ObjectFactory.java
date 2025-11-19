
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

    private final static QName _ObtenerClientePorEmail_QNAME = new QName("http://services/", "obtenerClientePorEmail");
    private final static QName _LoginClienteResponse_QNAME = new QName("http://services/", "loginClienteResponse");
    private final static QName _RegistrarCliente_QNAME = new QName("http://services/", "registrarCliente");
    private final static QName _ActualizarClienteResponse_QNAME = new QName("http://services/", "actualizarClienteResponse");
    private final static QName _EliminarClienteResponse_QNAME = new QName("http://services/", "eliminarClienteResponse");
    private final static QName _ListarClientesResponse_QNAME = new QName("http://services/", "listarClientesResponse");
    private final static QName _EliminarCliente_QNAME = new QName("http://services/", "eliminarCliente");
    private final static QName _LoginCliente_QNAME = new QName("http://services/", "loginCliente");
    private final static QName _ObtenerClientePorEmailResponse_QNAME = new QName("http://services/", "obtenerClientePorEmailResponse");
    private final static QName _VerificarClienteResponse_QNAME = new QName("http://services/", "verificarClienteResponse");
    private final static QName _VerificarCliente_QNAME = new QName("http://services/", "verificarCliente");
    private final static QName _RegistrarClienteResponse_QNAME = new QName("http://services/", "registrarClienteResponse");
    private final static QName _ActualizarCliente_QNAME = new QName("http://services/", "actualizarCliente");
    private final static QName _ListarClientes_QNAME = new QName("http://services/", "listarClientes");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: services
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ActualizarCliente }
     * 
     */
    public ActualizarCliente createActualizarCliente() {
        return new ActualizarCliente();
    }

    /**
     * Create an instance of {@link ListarClientes }
     * 
     */
    public ListarClientes createListarClientes() {
        return new ListarClientes();
    }

    /**
     * Create an instance of {@link RegistrarClienteResponse }
     * 
     */
    public RegistrarClienteResponse createRegistrarClienteResponse() {
        return new RegistrarClienteResponse();
    }

    /**
     * Create an instance of {@link ActualizarClienteResponse }
     * 
     */
    public ActualizarClienteResponse createActualizarClienteResponse() {
        return new ActualizarClienteResponse();
    }

    /**
     * Create an instance of {@link EliminarClienteResponse }
     * 
     */
    public EliminarClienteResponse createEliminarClienteResponse() {
        return new EliminarClienteResponse();
    }

    /**
     * Create an instance of {@link ListarClientesResponse }
     * 
     */
    public ListarClientesResponse createListarClientesResponse() {
        return new ListarClientesResponse();
    }

    /**
     * Create an instance of {@link ObtenerClientePorEmailResponse }
     * 
     */
    public ObtenerClientePorEmailResponse createObtenerClientePorEmailResponse() {
        return new ObtenerClientePorEmailResponse();
    }

    /**
     * Create an instance of {@link VerificarClienteResponse }
     * 
     */
    public VerificarClienteResponse createVerificarClienteResponse() {
        return new VerificarClienteResponse();
    }

    /**
     * Create an instance of {@link VerificarCliente }
     * 
     */
    public VerificarCliente createVerificarCliente() {
        return new VerificarCliente();
    }

    /**
     * Create an instance of {@link EliminarCliente }
     * 
     */
    public EliminarCliente createEliminarCliente() {
        return new EliminarCliente();
    }

    /**
     * Create an instance of {@link LoginCliente }
     * 
     */
    public LoginCliente createLoginCliente() {
        return new LoginCliente();
    }

    /**
     * Create an instance of {@link LoginClienteResponse }
     * 
     */
    public LoginClienteResponse createLoginClienteResponse() {
        return new LoginClienteResponse();
    }

    /**
     * Create an instance of {@link RegistrarCliente }
     * 
     */
    public RegistrarCliente createRegistrarCliente() {
        return new RegistrarCliente();
    }

    /**
     * Create an instance of {@link ObtenerClientePorEmail }
     * 
     */
    public ObtenerClientePorEmail createObtenerClientePorEmail() {
        return new ObtenerClientePorEmail();
    }

    /**
     * Create an instance of {@link Cliente }
     * 
     */
    public Cliente createCliente() {
        return new Cliente();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerClientePorEmail }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerClientePorEmail")
    public JAXBElement<ObtenerClientePorEmail> createObtenerClientePorEmail(ObtenerClientePorEmail value) {
        return new JAXBElement<ObtenerClientePorEmail>(_ObtenerClientePorEmail_QNAME, ObtenerClientePorEmail.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "loginClienteResponse")
    public JAXBElement<LoginClienteResponse> createLoginClienteResponse(LoginClienteResponse value) {
        return new JAXBElement<LoginClienteResponse>(_LoginClienteResponse_QNAME, LoginClienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "registrarCliente")
    public JAXBElement<RegistrarCliente> createRegistrarCliente(RegistrarCliente value) {
        return new JAXBElement<RegistrarCliente>(_RegistrarCliente_QNAME, RegistrarCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarClienteResponse")
    public JAXBElement<ActualizarClienteResponse> createActualizarClienteResponse(ActualizarClienteResponse value) {
        return new JAXBElement<ActualizarClienteResponse>(_ActualizarClienteResponse_QNAME, ActualizarClienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarClienteResponse")
    public JAXBElement<EliminarClienteResponse> createEliminarClienteResponse(EliminarClienteResponse value) {
        return new JAXBElement<EliminarClienteResponse>(_EliminarClienteResponse_QNAME, EliminarClienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarClientesResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarClientesResponse")
    public JAXBElement<ListarClientesResponse> createListarClientesResponse(ListarClientesResponse value) {
        return new JAXBElement<ListarClientesResponse>(_ListarClientesResponse_QNAME, ListarClientesResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarCliente")
    public JAXBElement<EliminarCliente> createEliminarCliente(EliminarCliente value) {
        return new JAXBElement<EliminarCliente>(_EliminarCliente_QNAME, EliminarCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "loginCliente")
    public JAXBElement<LoginCliente> createLoginCliente(LoginCliente value) {
        return new JAXBElement<LoginCliente>(_LoginCliente_QNAME, LoginCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerClientePorEmailResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerClientePorEmailResponse")
    public JAXBElement<ObtenerClientePorEmailResponse> createObtenerClientePorEmailResponse(ObtenerClientePorEmailResponse value) {
        return new JAXBElement<ObtenerClientePorEmailResponse>(_ObtenerClientePorEmailResponse_QNAME, ObtenerClientePorEmailResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link VerificarClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "verificarClienteResponse")
    public JAXBElement<VerificarClienteResponse> createVerificarClienteResponse(VerificarClienteResponse value) {
        return new JAXBElement<VerificarClienteResponse>(_VerificarClienteResponse_QNAME, VerificarClienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link VerificarCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "verificarCliente")
    public JAXBElement<VerificarCliente> createVerificarCliente(VerificarCliente value) {
        return new JAXBElement<VerificarCliente>(_VerificarCliente_QNAME, VerificarCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link RegistrarClienteResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "registrarClienteResponse")
    public JAXBElement<RegistrarClienteResponse> createRegistrarClienteResponse(RegistrarClienteResponse value) {
        return new JAXBElement<RegistrarClienteResponse>(_RegistrarClienteResponse_QNAME, RegistrarClienteResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarCliente }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarCliente")
    public JAXBElement<ActualizarCliente> createActualizarCliente(ActualizarCliente value) {
        return new JAXBElement<ActualizarCliente>(_ActualizarCliente_QNAME, ActualizarCliente.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarClientes }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarClientes")
    public JAXBElement<ListarClientes> createListarClientes(ListarClientes value) {
        return new JAXBElement<ListarClientes>(_ListarClientes_QNAME, ListarClientes.class, null, value);
    }

}
