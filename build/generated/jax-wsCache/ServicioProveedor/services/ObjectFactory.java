
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

    private final static QName _EliminarProveedorResponse_QNAME = new QName("http://services/", "eliminarProveedorResponse");
    private final static QName _ListarProveedores_QNAME = new QName("http://services/", "listarProveedores");
    private final static QName _ObtenerNombreEmpresaResponse_QNAME = new QName("http://services/", "obtenerNombreEmpresaResponse");
    private final static QName _ObtenerProveedor_QNAME = new QName("http://services/", "obtenerProveedor");
    private final static QName _EliminarProveedor_QNAME = new QName("http://services/", "eliminarProveedor");
    private final static QName _ObtenerNombreEmpresa_QNAME = new QName("http://services/", "obtenerNombreEmpresa");
    private final static QName _ActualizarProveedorResponse_QNAME = new QName("http://services/", "actualizarProveedorResponse");
    private final static QName _InsertarProveedorResponse_QNAME = new QName("http://services/", "insertarProveedorResponse");
    private final static QName _InsertarProveedor_QNAME = new QName("http://services/", "insertarProveedor");
    private final static QName _ActualizarProveedor_QNAME = new QName("http://services/", "actualizarProveedor");
    private final static QName _ListarProveedoresResponse_QNAME = new QName("http://services/", "listarProveedoresResponse");
    private final static QName _ObtenerProveedorResponse_QNAME = new QName("http://services/", "obtenerProveedorResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: services
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertarProveedor }
     * 
     */
    public InsertarProveedor createInsertarProveedor() {
        return new InsertarProveedor();
    }

    /**
     * Create an instance of {@link ActualizarProveedorResponse }
     * 
     */
    public ActualizarProveedorResponse createActualizarProveedorResponse() {
        return new ActualizarProveedorResponse();
    }

    /**
     * Create an instance of {@link InsertarProveedorResponse }
     * 
     */
    public InsertarProveedorResponse createInsertarProveedorResponse() {
        return new InsertarProveedorResponse();
    }

    /**
     * Create an instance of {@link ActualizarProveedor }
     * 
     */
    public ActualizarProveedor createActualizarProveedor() {
        return new ActualizarProveedor();
    }

    /**
     * Create an instance of {@link ListarProveedoresResponse }
     * 
     */
    public ListarProveedoresResponse createListarProveedoresResponse() {
        return new ListarProveedoresResponse();
    }

    /**
     * Create an instance of {@link ObtenerProveedorResponse }
     * 
     */
    public ObtenerProveedorResponse createObtenerProveedorResponse() {
        return new ObtenerProveedorResponse();
    }

    /**
     * Create an instance of {@link EliminarProveedorResponse }
     * 
     */
    public EliminarProveedorResponse createEliminarProveedorResponse() {
        return new EliminarProveedorResponse();
    }

    /**
     * Create an instance of {@link ListarProveedores }
     * 
     */
    public ListarProveedores createListarProveedores() {
        return new ListarProveedores();
    }

    /**
     * Create an instance of {@link ObtenerNombreEmpresaResponse }
     * 
     */
    public ObtenerNombreEmpresaResponse createObtenerNombreEmpresaResponse() {
        return new ObtenerNombreEmpresaResponse();
    }

    /**
     * Create an instance of {@link EliminarProveedor }
     * 
     */
    public EliminarProveedor createEliminarProveedor() {
        return new EliminarProveedor();
    }

    /**
     * Create an instance of {@link ObtenerNombreEmpresa }
     * 
     */
    public ObtenerNombreEmpresa createObtenerNombreEmpresa() {
        return new ObtenerNombreEmpresa();
    }

    /**
     * Create an instance of {@link ObtenerProveedor }
     * 
     */
    public ObtenerProveedor createObtenerProveedor() {
        return new ObtenerProveedor();
    }

    /**
     * Create an instance of {@link Proveedor }
     * 
     */
    public Proveedor createProveedor() {
        return new Proveedor();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarProveedorResponse")
    public JAXBElement<EliminarProveedorResponse> createEliminarProveedorResponse(EliminarProveedorResponse value) {
        return new JAXBElement<EliminarProveedorResponse>(_EliminarProveedorResponse_QNAME, EliminarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProveedores }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarProveedores")
    public JAXBElement<ListarProveedores> createListarProveedores(ListarProveedores value) {
        return new JAXBElement<ListarProveedores>(_ListarProveedores_QNAME, ListarProveedores.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerNombreEmpresaResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerNombreEmpresaResponse")
    public JAXBElement<ObtenerNombreEmpresaResponse> createObtenerNombreEmpresaResponse(ObtenerNombreEmpresaResponse value) {
        return new JAXBElement<ObtenerNombreEmpresaResponse>(_ObtenerNombreEmpresaResponse_QNAME, ObtenerNombreEmpresaResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerProveedor")
    public JAXBElement<ObtenerProveedor> createObtenerProveedor(ObtenerProveedor value) {
        return new JAXBElement<ObtenerProveedor>(_ObtenerProveedor_QNAME, ObtenerProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link EliminarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "eliminarProveedor")
    public JAXBElement<EliminarProveedor> createEliminarProveedor(EliminarProveedor value) {
        return new JAXBElement<EliminarProveedor>(_EliminarProveedor_QNAME, EliminarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerNombreEmpresa }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerNombreEmpresa")
    public JAXBElement<ObtenerNombreEmpresa> createObtenerNombreEmpresa(ObtenerNombreEmpresa value) {
        return new JAXBElement<ObtenerNombreEmpresa>(_ObtenerNombreEmpresa_QNAME, ObtenerNombreEmpresa.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarProveedorResponse")
    public JAXBElement<ActualizarProveedorResponse> createActualizarProveedorResponse(ActualizarProveedorResponse value) {
        return new JAXBElement<ActualizarProveedorResponse>(_ActualizarProveedorResponse_QNAME, ActualizarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertarProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "insertarProveedorResponse")
    public JAXBElement<InsertarProveedorResponse> createInsertarProveedorResponse(InsertarProveedorResponse value) {
        return new JAXBElement<InsertarProveedorResponse>(_InsertarProveedorResponse_QNAME, InsertarProveedorResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link InsertarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "insertarProveedor")
    public JAXBElement<InsertarProveedor> createInsertarProveedor(InsertarProveedor value) {
        return new JAXBElement<InsertarProveedor>(_InsertarProveedor_QNAME, InsertarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ActualizarProveedor }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "actualizarProveedor")
    public JAXBElement<ActualizarProveedor> createActualizarProveedor(ActualizarProveedor value) {
        return new JAXBElement<ActualizarProveedor>(_ActualizarProveedor_QNAME, ActualizarProveedor.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListarProveedoresResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "listarProveedoresResponse")
    public JAXBElement<ListarProveedoresResponse> createListarProveedoresResponse(ListarProveedoresResponse value) {
        return new JAXBElement<ListarProveedoresResponse>(_ListarProveedoresResponse_QNAME, ListarProveedoresResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ObtenerProveedorResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://services/", name = "obtenerProveedorResponse")
    public JAXBElement<ObtenerProveedorResponse> createObtenerProveedorResponse(ObtenerProveedorResponse value) {
        return new JAXBElement<ObtenerProveedorResponse>(_ObtenerProveedorResponse_QNAME, ObtenerProveedorResponse.class, null, value);
    }

}
