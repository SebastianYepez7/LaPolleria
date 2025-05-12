package Usuario;

import java.util.ArrayList;

public class GestionarPedidos {

    private static ArrayList<Pedido> listaPedidos = new ArrayList<>();

    public static void agregarPedido(Pedido pedido) {
        listaPedidos.add(pedido);
    }

    public static ArrayList<Pedido> getListaPedidos() {
        return listaPedidos;
    }
    
        // Listar todos los pedidos
    public static ArrayList<Pedido> obtenerPedidos() {
        return listaPedidos;
    }

    // Obtener pedido por ID
    public static Pedido getPedido(int id) {
        for (Pedido p : listaPedidos) {
            if (p.getId() == id) return p;
        }
        return null;
    }

    // Eliminar pedido por ID
    public static void eliminarPedido(int id) {
        listaPedidos.removeIf(p -> p.getId() == id);
    }

    // Actualizar pedido por ID
    public static void actualizarPedido(int id, Pedido nuevo) {
        for (int i = 0; i < listaPedidos.size(); i++) {
            if (listaPedidos.get(i).getId() == id) {
                listaPedidos.set(i, nuevo);
                break;
            }
        }
    }
}
