<%-- 
    Document   : adminLogin
    Created on : 25/03/2025, 7:18:55 p. m.
    Author     : Andrés Sebastián
--%>

<%@include file="librerias/header.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="d-flex justify-content-center align-items-center vh-100 bg-light">
    <div class="card shadow-lg p-4" style="width: 100%; max-width: 400px;">
        <h3 class="text-center mb-4 fw-bold">Acceso de Administrador</h3>

        <form action="adminDashboard.jsp" method="post">
            <div class="mb-3">
                <label for="usuario" class="form-label">Usuario</label>
                <input type="text" name="usuario" class="form-control" id="usuario" required>
            </div>

            <div class="mb-3">
                <label for="clave" class="form-label">Contraseña</label>
                <input type="password" name="clave" class="form-control" id="clave" required>
            </div>

            <div class="d-grid mt-4">
                <button type="submit" class="btn btn-primary">Entrar</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
<%@include file="librerias/footer.jsp"%>