
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />
        
    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Usuario</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="UsuarioController/editarPost" method="post" >

            <%@ page import="anukaranzaiko.model.Usuario, java.util.ArrayList, com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.reflect.Type" %>

            <%
                String usuariosJson = request.getParameter("usuarios");
                Gson gson = new Gson();
                Type tipoUsuarios = new TypeToken<ArrayList<Usuario>>() {}.getType();
                ArrayList<Usuario> usuarios = gson.fromJson(usuariosJson, tipoUsuarios);
            %>
            <% for (Usuario usuario : usuarios) { %>
                
                <div class="yup">
                    <label class="yup__label" for="nombreUsuario">Nombre</label>
                    <input id="nombreUsuario" class="yup__input" type="text" name="nombre" value="<%= usuario.getNombre() %>" placeholder="nombre">
                </div>

                
                    
                <input id="nombreUsuario" class="yup__input" type="hidden" name="idUsuario" value="<%= usuario.getIdUsuario() %>" >
                
                
                <div class="yup">
                    <label class="yup__label" for="apellidoUsuario">Apellido</label>
                    <input id="nombreUsuario" class="yup__input" type="text" name="apellido" value="<%= usuario.getApellido() %>" placeholder="apellido">
                </div>
    
                <div class="yup">
                    <label class="yup__label" for="correoUsuario">Correo</label>
                    <input id="correoUsuario" class="yup__input" type="text" name="correo" value="<%= usuario.getCorreo() %>" placeholder="correo">
                </div>
                    
            <% } %>

            <div class="btn-yup">
                <button class="btn" type="submit">Registrar</button>
            </div>

        </form>
    </div>

<jsp:include page="footer.jsp" />