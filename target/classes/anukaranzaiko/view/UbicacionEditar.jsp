
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />
        
    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Ubicacion</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="">

            <div class="yup">
                <label class="yup__label" for="idArea">Seleccione area</label>
                <select id="idArea" class="yup__select col-span--2" name="idArea" id="">
                    <option class="yup__option" value="">listado de areas</option>
                    <option class="yup__option" value="">1</option>
                    <option class="yup__option" value="">2</option>
                    <option class="yup__option" value="">3</option>
                    <option class="yup__option" value="">4</option>
                </select>
            </div>

            <div class="yup">
                <label class="yup__label" for="posicion">Posicion</label>
                <input id="posicion" class="yup__input" type="text" name="posicion" placeholder="posicion">
            </div>
            
            <div class="yup">
                <label class="yup__label" for="cardinalidad">Cardinalidad</label>
                <input id="cardinalidad" class="yup__input" type="text" name="cardinalidad" placeholder="cardinalidad">
            </div>

            <div class="yup">
                <label class="yup__label" for="puntoRed">Punto red</label>
                <input id="puntoRed" class="yup__input" type="text" name="puntoRed" placeholder="cardinalidad">
            </div>

            <div class="yup">
                <label class="yup__label" for="puntoRed">Oberscacion</label>
                <textarea id="observacion" class="yup__textarea" type="text" name="observacion" placeholder="observacion"></textarea>
            </div>


            <div class="btn-yup">
                <button class="btn" type="submit">Editar</button>
            </div>

        </form>
    </div>


<jsp:include page="footer.jsp" />