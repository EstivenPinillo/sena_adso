
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />

    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Usuario</h4>
            <h5 class="header__title__sub">Registro</h5>
        </header>
        <form class="form" action="UsuarioController/registrar" method="post">

            <div class="yup">
                <label class="yup__label" for="nombreUsuario">Nombre</label>
                <input id="nombreUsuario" class="yup__input" type="text" name="nombre" placeholder="nombre">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="apellidoUsuario">Apellido</label>
                <input id="nombreUsuario" class="yup__input" type="text" name="apellido" placeholder="apellido">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="correoUsuario">Correo</label>
                <input id="correoUsuario" class="yup__input" type="text" name="correo" placeholder="correo">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="contrasena">Contrasena</label>
                <input id="contrasena" class="yup__input" type="text" name="clave" placeholder="Contrasena">
            </div>

            <input id="correoUsuario" class="yup__input" type="hidden" name="accion" value="registrar">
            
            <div class="btn-yup">
                <button class="btn" type="submit">Registrar</button>
            </div>

        </form>
    </div>

<jsp:include page="footer.jsp" />