/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import Usuario.GestionarPedidos;
import Usuario.Pedido;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

public class ServletPedidos extends HttpServlet {

    private static int contadorID = 1;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ServletPedidos</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ServletPedidos at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String cedula = request.getParameter("cedula");
        String telefono = request.getParameter("telefono");
        String direccion = request.getParameter("direccion");
        String metododepago = request.getParameter("metododepago");
        String pedidoarealizar = request.getParameter("pedidoarealizar");
        String productoadicional = request.getParameter("productoadicional");
        String bebidas = request.getParameter("bebidas");

        int cantidadPedido = Integer.parseInt(request.getParameter("cantidadPedido"));
        int cantidadAdicional = Integer.parseInt(request.getParameter("cantidadAdicional"));
        int cantidadBebidas = Integer.parseInt(request.getParameter("cantidadBebidas"));

        Pedido pedido = new Pedido(contadorID++, nombre, cedula, telefono, direccion, metododepago,
                pedidoarealizar, productoadicional, bebidas,
                cantidadPedido, cantidadAdicional, cantidadBebidas);

        GestionarPedidos.agregarPedido(pedido);

        response.sendRedirect("pedidoConfirmado.jsp");
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");

        if ("eliminar".equals(accion)) {
            int id = parseOrDefault(request.getParameter("id"), 0);
            GestionarPedidos.eliminarPedido(id);
            response.sendRedirect("adminDashboard.jsp");

        } else if ("editar".equals(accion)) {
            int id = parseOrDefault(request.getParameter("id"), 0);
            Pedido pedido = GestionarPedidos.getPedido(id);

            if (pedido != null) {
                request.setAttribute("pedido", pedido);
                request.getRequestDispatcher("editarPedido.jsp").forward(request, response);
            } else {
                response.getWriter().println("Pedido no encontrado.");
            }
            return; // Importante para que no siga con otras acciones

        } else if ("guardarCambios".equals(accion)) {
            int id = parseOrDefault(request.getParameter("id"), 0);
            String nombre = request.getParameter("nombre");
            String cedula = request.getParameter("cedula");
            String telefono = request.getParameter("telefono");
            String direccion = request.getParameter("direccion");
            String metododepago = request.getParameter("metododepago");
            String pedidoarealizar = request.getParameter("pedidoarealizar");
            String productoadicional = request.getParameter("productoadicional");
            String bebidas = request.getParameter("bebidas");
            int cantidadPedido = Integer.parseInt(request.getParameter("cantidadPedido"));
            int cantidadAdicional = Integer.parseInt(request.getParameter("cantidadAdicional"));
            int cantidadBebidas = Integer.parseInt(request.getParameter("cantidadBebidas"));

            Pedido nuevo = new Pedido(id, nombre, cedula, telefono, direccion, metododepago,
                    pedidoarealizar, productoadicional, bebidas,
                    cantidadPedido, cantidadAdicional, cantidadBebidas);

            GestionarPedidos.actualizarPedido(id, nuevo);
            response.sendRedirect("adminDashboard.jsp");
        }
    }

    private int parseOrDefault(String param, int defaultValue) {
        try {
            return Integer.parseInt(param);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
