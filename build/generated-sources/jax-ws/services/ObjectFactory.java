
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

    private final static QName _AgregarEvento_QNAME = new QName("http://services/", "agregarEvento");
    private final static QName _AgregarEventoResponse_QNAME = new QName("http://services/", "agregarEventoResponse");
    private final static QName _ActualizarEvento_QNAME = new QName("http://services/", "actualizarEvento");
    private final static QName _ActualizarEventoResponse_QNAME = new QName("http://services/", "actualizarEventoResponse");
    private final static QName _ListarEventosResponse_QNAME = new QName("http://services/", "listarEventosResponse");
    private final static QName _ObtenerEventoPorIdResponse_QNAME = new QName("http://services/", "obtenerEventoPorIdResponse");
    private final static QName _ObtenerEventoPorId_QNAME = new QName("http://services/", "obtenerEventoPorId");
    private final static QName _EliminarEvento_QNAME = new QName("http://services/", "eliminarEvento");
    private final static QName _EliminarEventoResponse_QNAME = new QName("http://services/", "eliminarEventoResponse");
    private final static QName _ListarEventos_QNAME = new QName("http://services/", "listarEventos");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: services
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link ObtenerEventoPorId }
     * 
     */
    public ObtenerEventoPorId createObtenerEventoPorId() {
        return new ObtenerEventoPorId();
    }

    /**
     * Create an instance of {@link ObtenerEventoPorIdResponse }
     * 
     */
    public ObtenerEventoPorIdResponse createObtenerEventoPorIdResponse() {
        return new ObtenerEventoPorIdResponse();
    }

    /**
     * Create an instance of {@link EliminarEvento }
     * 
     */
    public EliminarEvento createEliminarEvento() {
        return new EliminarEvento();
    }

    /**
     * Create an instance of {@link EliminarEventoResponse }
     * 
     */
    public EliminarEventoResponse createEliminarEventoResponse() {
        return new EliminarEventoResponse();
    }

    /**
     * Create an instance of {@link ListarEventos }
     * 
     */
    public ListarEventos createListarEventos() {
        return new ListarEventos();
    }

    /**
     * Create an instance of {@link ActualizarEvento }
     * 
     */
    public ActualizarEvento createActualizarEvento() {
        return new ActualizarEvento();
    }

    /**
     * Create an instance of {@link AgregarEvento }
     * 
     */
    public AgregarEvento createAgregarEvento() {
        return new AgregarEvento();
    }

    /**
     * Create an instance of {@link AgregarEventoResponse }
     * 
     */
    public AgregarEventoResponse createAgregarEventoResponse() {
        return new AgregarEventoResponse();
    }

    /**
     * Create an instance of {@link ListarEventosResponse }
     * 
     */
    public ListarEventosResponse createListarEventosResponse() {
        return new ListarEventosResponse();
    }

    /**
     * Create an instance of {@link ActualizarEventoResponse }
     * 
     */
    public ActualizarEventoResponse createActualizarEventoResponse() {
        return new ActualizarEventoResponse();
    }

    /**
     * Create an instance of {@link Evento }
     * 
     */
    public Evento createEvento() {
        return new Evento();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarEvento }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "agregarEvento")
    public JAXBElement<AgregarEvento> createAgregarEvento(AgregarEvento value) {
        return new JAXBElement<AgregarEvento>(_AgregarEvento_QNAME, AgregarEvento.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AgregarEventoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "agregarEventoResponse")
    public JAXBElement<AgregarEventoResponse> createAgregarEventoResponse(AgregarEventoResponse value) {
        return new JAXBElement<AgregarEventoResponse>(_AgregarEventoResponse_QNAME, AgregarEventoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarEvento }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarEvento")
    public JAXBElement<ActualizarEvento> createActualizarEvento(ActualizarEvento value) {
        return new JAXBElement<ActualizarEvento>(_ActualizarEvento_QNAME, ActualizarEvento.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarEventoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarEventoResponse")
    public JAXBElement<ActualizarEventoResponse> createActualizarEventoResponse(ActualizarEventoResponse value) {
        return new JAXBElement<ActualizarEventoResponse>(_ActualizarEventoResponse_QNAME, ActualizarEventoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEventosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarEventosResponse")
    public JAXBElement<ListarEventosResponse> createListarEventosResponse(ListarEventosResponse value) {
        return new JAXBElement<ListarEventosResponse>(_ListarEventosResponse_QNAME, ListarEventosResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEventoPorIdResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEventoPorIdResponse")
    public JAXBElement<ObtenerEventoPorIdResponse> createObtenerEventoPorIdResponse(ObtenerEventoPorIdResponse value) {
        return new JAXBElement<ObtenerEventoPorIdResponse>(_ObtenerEventoPorIdResponse_QNAME, ObtenerEventoPorIdResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerEventoPorId }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerEventoPorId")
    public JAXBElement<ObtenerEventoPorId> createObtenerEventoPorId(ObtenerEventoPorId value) {
        return new JAXBElement<ObtenerEventoPorId>(_ObtenerEventoPorId_QNAME, ObtenerEventoPorId.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarEvento }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarEvento")
    public JAXBElement<EliminarEvento> createEliminarEvento(EliminarEvento value) {
        return new JAXBElement<EliminarEvento>(_EliminarEvento_QNAME, EliminarEvento.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarEventoResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarEventoResponse")
    public JAXBElement<EliminarEventoResponse> createEliminarEventoResponse(EliminarEventoResponse value) {
        return new JAXBElement<EliminarEventoResponse>(_EliminarEventoResponse_QNAME, EliminarEventoResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarEventos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarEventos")
    public JAXBElement<ListarEventos> createListarEventos(ListarEventos value) {
        return new JAXBElement<ListarEventos>(_ListarEventos_QNAME, ListarEventos.class, null, value);
    }

}
