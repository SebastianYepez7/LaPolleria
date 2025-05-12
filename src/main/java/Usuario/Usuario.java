/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Usuario;

/**
 *
 * @author Andrés Sebastián
 */
public class Usuario extends Persona{
    String metododepago;
    String pedidoarealizar;
    String productoadicional;
    String bebidas;

    public Usuario(String metododepago, String pedidoarealizar, String productoadicional, String bebidas, String nombre, String cedula, String telefono, String direccion) {
        super(nombre, cedula, telefono, direccion);
        this.metododepago = metododepago;
        this.pedidoarealizar = pedidoarealizar;
        this.productoadicional = productoadicional;
        this.bebidas = bebidas;
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
    
}
