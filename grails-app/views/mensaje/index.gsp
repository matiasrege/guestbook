
<html>
    <head>
        <title><g:message code="home.saludo" /></title>
		<meta name="layout" content="main" />
    </head>
    <body>
        <h1><g:message code="home.saludo" /></h1>
        <g:form method="post" controller="mensaje">
            <label for="nombre">Nombre</label>
            <input type="text" id="nombre" name="nombre" value="" />
            <label for="mensaje">Mensaje</label>
            <textarea id="mensaje" name="mensaje"></textarea>
            <input type="submit" value="Enviar" />
        </g:form>
        <%if(mensajes?.size > 0) {%>
            <ul>
                <g:each in="${mensajes}">
                    <li><span class="nombre"><%= it.nombreUsuario %></span><span class="mensaje"><%= it.texto %></span></li>
                </g:each>
            </ul>
        <%}%>
    </body>
</html>
