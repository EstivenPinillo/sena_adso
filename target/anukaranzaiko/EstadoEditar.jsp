
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />

    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Estado</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="EstadoController" method="get">

            <div class="yup">
                <label class="yup__label" for="nombreEstado">Nombre *</label>
                <input id="nombreEstado" class="yup__input" type="text" name="nombre" placeholder="Nombre">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="">Descripcion *</label>
                <textarea id="descripcionEstado" class="yup__textarea" type="text" name="descripcion" placeholder="Descripcion"></textarea>
            </div>
            
            <div class="btn-yup">
                <button class="btn" type="submit">Editar</button>
            </div>

        </form>
        
    </div>

<jsp:include page="footer.jsp" />