
<jsp:include page="head.jsp" />

    <jsp:include page="nav.jsp" />

    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Mapa</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="">

            <div class="yup">
                <label class="yup__label" for="nombreMapa">Nombre</label>
                <input id="nombreMapa" class="yup__input" type="text" name="decripcion" placeholder="nombre">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="decripcion">Descripcion</label>
                <textarea id="decripcion" class="yup__textarea" type="text" name="decripcion" placeholder="decripcion"></textarea>
            </div>

            <div class="btn-yup">
                <button class="btn" type="submit">Editar</button>
            </div>

        </form>
    </div>

    <jsp:include page="footer.jsp" />