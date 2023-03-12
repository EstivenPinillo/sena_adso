<%@ page import="anukaranzaiko.model.Estado, java.util.ArrayList" %>

<%
    ArrayList<Estado> estados = (ArrayList<Estado>) request.getAttribute("estados");

    for (Estado estado : estados) {
        out.println("<p>" + estado.getNombre() + "</p>");
    }
%>