<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Usuario.Pedido" %>
<%@ include file="librerias/header.jsp" %>

<%
    Pedido pedido = (Pedido) request.getAttribute("pedido");
%>

<main class="container my-5">

    
    <form action="ServletPedidos" method="post" class="row g-3 shadow p-4 rounded bg-light">
            <h2 class="text-center fw-bold mb-4">Editar Pedido</h2>
        <input type="hidden" name="accion" value="guardarCambios"/>
        <input type="hidden" name="id" value="<%= pedido.getId() %>"/>

        <div class="col-md-6">
            <label class="form-label">Nombre:</label>
            <input type="text" name="nombre" class="form-control" value="<%= pedido.getNombre() %>"/>
        </div>
        <div class="col-md-6">
            <label class="form-label">Cédula:</label>
            <input type="text" name="cedula" class="form-control" value="<%= pedido.getCedula() %>"/>
        </div>
        <div class="col-md-6">
            <label class="form-label">Teléfono:</label>
            <input type="text" name="telefono" class="form-control" value="<%= pedido.getTelefono() %>"/>
        </div>
        <div class="col-md-6">
            <label class="form-label">Dirección:</label>
            <input type="text" name="direccion" class="form-control" value="<%= pedido.getDireccion() %>"/>
        </div>
        <div class="col-md-6">
            <label class="form-label">Método de Pago:</label>
                    <select name="metododepago" class="form-select" required value="<%= pedido.getMetododepago() %>"/>
                        <option value="">Seleccione una opción</option>
                        <option value="Efectivo">Efectivo</option>
                        <option value="Nequi">Nequi</option>
                        <option value="Daviplata">Daviplata</option>
                        <option value="Transferencia">Transferencia</option>
                    </select>
        </div>
        <div class="col-md-6">
            <label class="form-label">Pedido a Realizar:</label>
            <select name="pedidoarealizar" class="form-select" required value="<%= pedido.getPedidoarealizar() %>"/>
                        <option value="">Seleccione una opción</option>
                        <option value="1/4 Pollo Broaster"> 1/4 de Pollo Broaster</option>
                        <option value="1/8 Pollo Broaster">1/8 de Pollo Broaster</option>
                        <option value="1/4 Pollo Asado">1/4 de Pollo Asado</option>
                        <option value="1/8 Pollo Asado">1/8 de Pollo Asado</option>
                        <option value="Pollo Broaster Familiar">Pollo Broaster Familiar</option>
                        <option value="Pollo Asado Familiar">Pollo Asado Familiar</option>
                        <option value="Crispetas de pollo">Crispetas de pollo</option>
                        <option value="Hamburguesa de pollo">Hamburguesa de pollo</option>
                        <option value="Alitas BBQ">Alitas BBQ</option>
                        <option value="Sanduche de pollo">Sanduche de pollo</option>
                        <option value="Arroz con pollo">Arroz con pollo</option>
                        <option value="Chuleta de pollo">Chuleta de pollo</option>
            </select>
        </div>
        <div class="col-md-6">
            <label class="form-label">Producto Adicional:</label>
            <select name="productoadicional" class="form-select" value="<%= pedido.getProductoadicional() %>"/>
                        <option value="">Seleccione una opción</option>
                        <option value="Papas fritas">Papas fritas</option>
                        <option value="Arepas">Arepas</option>
                        <option value="Yuca">Yuca</option>
                        <option value="Helado">Helado</option>
                        <option value="Ninguna">Ninguna</option>
                    </select>
        </div>
        <div class="col-md-6">
            <label class="form-label">Bebidas:</label>
                            <select name="bebidas" class="form-select" value="<%= pedido.getBebidas() %>"/>
                        <option value="">Seleccione una opción</option>
                        <option value="Coca-Cola">Coca-Cola</option>
                        <option value="Pepsi">Pepsi</option>
                        <option value="Postobon">Postobon</option>
                        <option value="Jugo Natural">Jugo Natural</option>
                        <option value="Agua">Agua</option>
                        <option value="Poker">Poker</option>
                        <option value="Club Colombia">Club Colombia</option>
                        <option value="Corona">Corona</option>
                    </select>
        </div>
        <div class="col-md-4">
            <label class="form-label">Cantidad Pedido:</label>
            <input type="number" name="cantidadPedido" class="form-control" value="<%= pedido.getCantidadPedido() %>"/>
        </div>
        <div class="col-md-4">
            <label class="form-label">Cantidad Adicional:</label>
            <input type="number" name="cantidadAdicional" class="form-control" value="<%= pedido.getCantidadAdicional() %>"/>
        </div>
        <div class="col-md-4">
            <label class="form-label">Cantidad Bebidas:</label>
            <input type="number" name="cantidadBebidas" class="form-control" value="<%= pedido.getCantidadBebidas() %>"/>
        </div>

        <div class="col-12 text-center">
            <button type="submit" class="btn btn-primary px-5">Actualizar Pedido</button>
        </div>
    </form>
</main>

<%@ include file="librerias/footer.jsp" %>
