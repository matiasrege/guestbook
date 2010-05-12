<html>
    <head>
        <title><g:message code="home.welcome" /></title>
		<meta name="layout" content="main" />
    </head>
    <body>
        <h1><g:message code="home.welcome" /></h1>
        <g:form method="post" controller="message">
            <label for="user">Nombre</label>
            <input type="text" id="user" name="user" value="" />
            <label for="message">Mensaje</label>
            <textarea id="message" name="message"></textarea>
            <input type="submit" value="Enviar" />
        </g:form>
        <%if(messages?.size > 0) {%>
            <ul>
                <g:each in="${messages}">
                    <li><span class="user"><%= it.user %></span><span class="message"><%= it.text %></span></li>
                </g:each>
            </ul>
        <%}%>
    </body>
</html>
