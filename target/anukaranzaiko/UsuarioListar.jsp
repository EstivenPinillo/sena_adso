
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />

    <section class="show-data">

        <header class="header">
            <h3 class="header__title">Lista De Usuarios</h3>
        </header>

        <div class="data-inf">

            <div class="data-inf__head">
                <div class="data-inf__head__title">Nombre</div>
                <div class="data-inf__head__title">Apellido</div>
                <div class="data-inf__head__title hidden-inf">Correo</div>                   
                <div class="data-inf__head__title hidden-inf">Fecha registro</div>
                <div class="data-inf__head__title">Editar</div>
                <div class="data-inf__head__title">Eliminar</div>
            </div>
            
            <%@ page import="anukaranzaiko.model.Usuario, java.util.ArrayList, com.google.gson.Gson, com.google.gson.reflect.TypeToken, java.lang.reflect.Type" %>


            <%
                String usuariosJson = request.getParameter("usuarios");
                Gson gson = new Gson();
                Type tipoUsuarios = new TypeToken<ArrayList<Usuario>>() {}.getType();
                ArrayList<Usuario> usuarios = gson.fromJson(usuariosJson, tipoUsuarios);
            
            %>
                <% for (Usuario usuario : usuarios) { %>
                    
                   
                    <div class="data-inf__body">
                        <div class="data-inf__body__data"> <%= usuario.getNombre() %></div>
                        <div class="data-inf__body__data"> <%= usuario.getApellido() %></div>
                        <div class="data-inf__body__data hidden-inf"> <%= usuario.getCorreo() %></div>
                        <div class="data-inf__body__data hidden-inf"> <%= usuario.getCreated_at() %></div>
                        <div class="data-inf__body__data ">
                            <form action="UsuarioController/editar" method="post">
                                <input type="hidden" name="idUsuario" value="<%= usuario.getIdUsuario() %>">
                                <button class="btn--edit" type="submit">Editar</button>
                            </form>
                        </div>
                        <div class="data-inf__body__data">
                            <form action="UsuarioController/eliminar" method="post">
                                <input type="hidden" name="idUsuario" value="<%= usuario.getIdUsuario() %>">
                                <button class="btn--delete" type="submit">Eliminar</button>
                            </form>
                        </div>
                    </div>

                <% } %>
                    

        </div>

    </section>

<jsp:include page="footer.jsp" />
