
<jsp:include page="head.jsp" />


    <jsp:include page="nav.jsp" />
    <div class="form-yup w-400">
        <header class="header">
            <h4 class="header__title">Modulo Empresa</h4>
            <h5 class="header__title__sub">Modificacion</h5>
        </header>
        <form class="form" action="EstadoController" method="get">

            <div class="yup">
                <label class="yup__label" for="nit">Nit *</label>
                <input id="nit" class="yup__input" type="text" name="nombre" placeholder="Nit" />
            </div>
            
            <div class="yup">
                <label class="yup__label" for="">Razon social *</label>
                <input id="razonSocial" class="yup__input" type="text" placeholder="Razon social" />
            </div>
            
            <div class="btn-yup">
                <button class="btn" type="submit">Editar</button>
            </div>

        </form>
        
    </div>


<jsp:include page="footer.jsp" />