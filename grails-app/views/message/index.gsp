<html>
    <head>
        <title><g:message code="home.welcome" /></title>
		<meta name="layout" content="main" />
    </head>
    <body>
        <h1><g:message code="home.welcome" /></h1>
        <g:form method="post" controller="message">
            <label for="user"><g:message code="home.user" /></label>
            <input type="text" id="user" name="user" value="" />
            <label for="message"><g:message code="home.message" /></label>
            <textarea id="message" name="message"></textarea>
            <input type="submit" value="<g:message code="home.send" />" />
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
