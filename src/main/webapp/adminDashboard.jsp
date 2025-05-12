<%@page import="java.util.ArrayList"%>
<%@page import="Servlets.ServletPedidos"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="Usuario.GestionarPedidos" %>
<%@ page import="Usuario.Pedido" %>
<%@ page import="java.util.List" %>
<%@ include file="librerias/header.jsp" %>

<main class="container my-5">
    <h2 class="mb-4 text-center fw-bold">Panel de Administración</h2>

    <div class="table-responsive">
        <form method="get" action="adminDashboard.jsp" class="mb-3">
            <input type="text" name="filtro" placeholder="Buscar por nombre o cédula" />
            <button type="submit">Filtrar</button>
        </form>

        <table class="table table-bordered table-hover align-middle text-center shadow-sm">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Cédula</th>
                    <th>Teléfono</th>
                    <th>Dirección</th>
                    <th>Método de Pago</th>
                    <th>Pedido a Realizar</th>
                    <th>Producto Adicional</th>
                    <th>Bebidas</th>
                    <th>Cantidad del Pedido</th>
                    <th>Cantidad Adicional</th>
                    <th>Cantidad de Bebidas</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Pedido> listaPedidos = GestionarPedidos.obtenerPedidos();

                    String filtro = request.getParameter("filtro");

                    if (filtro != null && !filtro.trim().isEmpty()) {
                        filtro = filtro.toLowerCase(); // ignorar mayúsculas
                        List<Pedido> pedidosFiltrados = new ArrayList<>();

                        for (Pedido p : listaPedidos) {
                            if (p.getNombre().toLowerCase().contains(filtro) || p.getCedula().toLowerCase().contains(filtro)) {
                                pedidosFiltrados.add(p);
                            }
                        }

                        listaPedidos = pedidosFiltrados; // mostramos solo los filtrados
                    }
                    for (Pedido pedido : listaPedidos) {
                %>
                <tr>
                    <td><%= pedido.getId()%></td>
                    <td><%= pedido.getNombre()%></td>
                    <td><%= pedido.getCedula()%></td>
                    <td><%= pedido.getTelefono()%></td>
                    <td><%= pedido.getDireccion()%></td>
                    <td><%= pedido.getMetododepago()%></td>
                    <td><%= pedido.getPedidoarealizar()%></td>
                    <td><%= pedido.getProductoadicional()%></td>
                    <td><%= pedido.getBebidas()%></td>
                    <td><%= pedido.getCantidadPedido()%></td>
                    <td><%= pedido.getCantidadAdicional()%></td>
                    <td><%= pedido.getCantidadBebidas()%></td>
                    <td>
                        <form action="ServletPedidos" method="post" style="display:inline;">
                            <input type="hidden" name="accion" value="editar"/>
                            <input type="hidden" name="id" value="<%= pedido.getId()%>"/>
                            <button type="submit">Editar</button>
                        </form>


                        <form action="ServletPedidos" method="post" style="display:inline;">
                            <input type="hidden" name="accion" value="eliminar">
                            <input type="hidden" name="id" value="<%= pedido.getId()%>"/>
                            <button type="submit">Eliminar</button>
                        </form>
                    </td>
                </tr>
                <% }%>
            </tbody>
        </table>
    </div>
</main>

<%@ include file="librerias/footer.jsp" %>
