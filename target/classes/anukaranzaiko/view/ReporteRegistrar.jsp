
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />
        
    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Reporte</h4>
        </header>
        <form class="form" action="">

            <div class="yup">
                <label class="yup__label" for="">Seleccione reporte</label>
                <select class="yup__select col-span--2" name="" id="">
                    <option class="yup__option" value="">listado de reportes</option>
                    <option class="yup__option" value="">1</option>
                    <option class="yup__option" value="">2</option>
                    <option class="yup__option" value="">3</option>
                    <option class="yup__option" value="">4</option>
                </select>
            </div>
            
            <div class="btn-yup">
                <button class="btn" type="submit">Generar</button>
            </div>

        </form>
    </div>


<jsp:include page="footer.jsp" />