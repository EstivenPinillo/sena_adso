<div class="form-yup w-400">
    <header class="header">
        <h4 class="header__title">Iniciar Sesion</h4>
    </header>
    <form class="form" action="UsuarioController/iniciarSesion" method="post">

        <div class="yup">
            <label class="yup__label" for="numeroDocumentoCorreo">Numero de documento / Correo</label>
            <input id="numeroDocumentoCorreo" class="yup__input" type="text" name="numeroDocumentoCorreo" placeholder="numero documento / correo">
        </div>
        
        <div class="yup">
            <label class="yup__label" for="contrasena">Contrasena</label>
            <input id="contrasena" class="yup__input" type="text" name="contrasena" placeholder="contrasena">
        </div>

        <input id="correoUsuario" class="yup__input" type="hidden" name="accion" value="iniciarSesion">

        <div class="btn-yup">
            <button class="btn" type="submit">Iniciar</button>
        </div>

    </form>
    
</div>