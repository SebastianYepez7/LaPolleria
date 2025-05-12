/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Usuario;

public class Pedido  {
    private static int contador = 0;
    private int id;
    private String nombre;
    private String cedula;
    private String telefono;
    private String direccion;
    private String metododepago;
    private String pedidoarealizar;
    private String productoadicional;
    private String bebidas;
    private int cantidadPedido;
    private int cantidadAdicional;
    private int cantidadBebidas;

    // Constructor

    public Pedido(int id, String nombre, String cedula, String telefono, String direccion, String metododepago, String pedidoarealizar, String productoadicional, String bebidas, int cantidadPedido, int cantidadAdicional, int cantidadBebidas) {
        this.id = id;
        this.nombre = nombre;
        this.cedula = cedula;
        this.telefono = telefono;
        this.direccion = direccion;
        this.metododepago = metododepago;
        this.pedidoarealizar = pedidoarealizar;
        this.productoadicional = productoadicional;
        this.bebidas = bebidas;
        this.cantidadPedido = cantidadPedido;
        this.cantidadAdicional = cantidadAdicional;
        this.cantidadBebidas = cantidadBebidas;
        
    }

    public static int getContador() {
        return contador;
    }

    public static void setContador(int contador) {
        Pedido.contador = contador;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getMetododepago() {
        return metododepago;
    }

    public void setMetododepago(String metododepago) {
        this.metododepago = metododepago;
    }

    public String getPedidoarealizar() {
        return pedidoarealizar;
    }

    public void setPedidoarealizar(String pedidoarealizar) {
        this.pedidoarealizar = pedidoarealizar;
    }

    public String getProductoadicional() {
        return productoadicional;
    }

    public void setProductoadicional(String productoadicional) {
        this.productoadicional = productoadicional;
    }

    public String getBebidas() {
        return bebidas;
    }

    public void setBebidas(String bebidas) {
        this.bebidas = bebidas;
    }

    public int getCantidadPedido() {
        return cantidadPedido;
    }

    public void setCantidadPedido(int cantidadPedido) {
        this.cantidadPedido = cantidadPedido;
    }

    public int getCantidadAdicional() {
        return cantidadAdicional;
    }

    public void setCantidadAdicional(int cantidadAdicional) {
        this.cantidadAdicional = cantidadAdicional;
    }

    public int getCantidadBebidas() {
        return cantidadBebidas;
    }

    public void setCantidadBebidas(int cantidadBebidas) {
        this.cantidadBebidas = cantidadBebidas;
    }
        
        
    }
