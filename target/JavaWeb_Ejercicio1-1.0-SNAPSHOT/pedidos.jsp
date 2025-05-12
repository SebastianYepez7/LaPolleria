<%-- 
    Document   : pedidos
    Created on : 25/03/2025, 7:58:06 a. m.
    Author     : Andrés Sebastián
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="librerias/header.jsp" %>

<div class="container my-5">
    <div class="card shadow-lg p-4">
        <h2 class="text-center mb-4 fw-bold">Haz tu Pedido</h2>

        <form action="ServletPedidos" method="get">
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label class="form-label">Nombre</label>
                    <input type="text" name="nombre" class="form-control" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Cédula</label>
                    <input type="text" name="cedula" class="form-control" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Teléfono</label>
                    <input type="text" name="telefono" class="form-control" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Dirección</label>
                    <input type="text" name="direccion" class="form-control" required>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Método de Pago</label>
                    <select name="metododepago" class="form-select" required>
                        <option value="">Seleccione una opción</option>
                        <option value="Efectivo">Efectivo</option>
                        <option value="Nequi">Nequi</option>
                        <option value="Daviplata">Daviplata</option>
                        <option value="Transferencia">Transferencia</option>
                    </select>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Pedido a Realizar</label>
                    <select name="pedidoarealizar" class="form-select" required>
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

                <div class="col-md-6 mb-3">
                    <label class="form-label">Producto Adicional</label>
                    <select name="productoadicional" class="form-select">
                        <option value="">Seleccione una opción</option>
                        <option value="Papas fritas">Papas fritas</option>
                        <option value="Arepas">Arepas</option>
                        <option value="Yuca">Yuca</option>
                        <option value="Helado">Helado</option>
                        <option value="Ninguna">Ninguna</option>
                    </select>
                </div>

                <div class="col-md-6 mb-3">
                    <label class="form-label">Bebidas</label>
                    <select name="bebidas" class="form-select">
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


                <div class="col-md-4 mb-3">
                    <label class="form-label">Cantidad del Pedido</label>
                    <input type="number" name="cantidadPedido" class="form-control" required>
                </div>

                <div class="col-md-4 mb-3">
                    <label class="form-label">Cantidad Adicional</label>
                    <input type="number" name="cantidadAdicional" class="form-control">
                </div>

                <div class="col-md-4 mb-3">
                    <label class="form-label">Cantidad de Bebidas</label>
                    <input type="number" name="cantidadBebidas" class="form-control">
                </div>
            </div>

            <div class="text-center mt-4">
                <button type="submit" class="btn btn-primary px-4 py-2">Enviar Pedido</button>
            </div>
        </form>
    </div>
</div>

<%@ include file="librerias/footer.jsp" %>
