<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />

    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Area</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="">

            <div class="yup">
                <label class="yup__label" for="idMapa">Seleccione mapa</label>
                <select id="idMapa" class="yup__select col-span--2" name="idMapa">
                    <option class="yup__option" value="">listado de mapas</option>
                    <option class="yup__option" value="">1</option>
                    <option class="yup__option" value="">2</option>
                    <option class="yup__option" value="">3</option>
                    <option class="yup__option" value="">4</option>
                </select>
            </div>

            <div class="yup">
                <label class="yup__label" for="nombreArea">Nombre</label>
                <input id="nombreArea" class="yup__input" type="text" name="nombre" placeholder="nombre">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="decripcionArea">Descripcion</label>
                <textarea id="decripcionArea" class="yup__textarea" type="text" name="decripcion" placeholder="decripcion"></textarea>
            </div>

            <div class="btn-yup">
                <button class="btn" type="submit">Editar</button>
            </div>

        </form>
    </div>

<jsp:include page="footer.jsp" />