
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />

    <div class="form-yup">
        <header class="header">
            <h4 class="header__title">Modulo Equipo</h4>
            <h5 class="header__title__sub">Registro</h5>
        </header>
        <form class="form" action="">

            <div class="yup-more--2">
                <div class="yup col-span--2">
                    <label class="yup__label" for="">Seleccione proveedor</label>
                    <select class="yup__select col-span--2" name="" id="">
                        <option class="yup__option" value="">listado de proveedores</option>
                        <option class="yup__option" value="">1</option>
                        <option class="yup__option" value="">2</option>
                        <option class="yup__option" value="">3</option>
                        <option class="yup__option" value="">4</option>
                    </select>
                </div>
                <div class="yup col-span--2">
                    <label class="yup__label" for="serialProveedor">Serial del proveedor</label>
                    <input id="serialProveedor" class="yup__input" type="text" name="serialProveedor" placeholder="serial del proveedor">
                </div>
            </div>

            <div class="yup-more--2">
                <div class="yup col-span--2">
                    <label class="yup__label" for="serialFabrica">Serial de fabrica</label>
                    <input id="serialFabrica" class="yup__input" type="text" name="serialFabrica" placeholder="serial de fabrica">
                </div>
                <div class="yup col-span--2">
                    <label class="yup__label" for="marca">Marca</label>
                    <input id="marca" class="yup__input" type="text" name="marca" placeholder="marca">
                </div>
            </div>

            <div class="yup-more--2">
                <div class="yup col-span--2">
                    <label class="yup__label" for="memoriaRam">Memoria ram</label>
                    <input id="memoriaRam" class="yup__input" type="text" name="memoriaRam" placeholder="memoria ram">
                </div>
                <div class="yup col-span--2">
                    <label class="yup__label" for="procesador">Procesador</label>
                    <input id="procesador" class="yup__input" type="text" name="procesador" placeholder="procesador">
                </div>
            </div>

            <div class="yup-more--2">
                <div class="yup col-span--2">
                    <label class="yup__label" for="tajetaMadre">Tarjeta madre</label>
                    <input id="tajetaMadre" class="yup__input" type="text" name="tajetaMadre" placeholder="tajeta madre">
                </div>
                <div class="yup col-span--2">
                    <label class="yup__label" for="almacenamiento">Almacenamiento</label>
                    <input id="almacenamiento" class="yup__input" type="text" name="almacenamiento" placeholder="almacenamiento">
                </div>
            </div>

            <div class="yup col-span--2">
                <label class="yup__label" for="observacion">Observacion</label>
                <textarea id="observacion" class="yup__textarea" type="text" name="observacion" placeholder="observacion"></textarea>
            </div>

            <div class="yup">
                <label class="yup__label" for="">Agregar accesorio</label>
                <div class="fz-50">+</div>
            </div>

            <div class="btn-yup">
                <button class="btn" type="submit">Ejecutar</button>
            </div>

        </form>
    </div>

<jsp:include page="footer.jsp" />