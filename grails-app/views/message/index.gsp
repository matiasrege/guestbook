<html>
    <head>
        <title><g:message code="home.welcome" /></title>
		<meta name="layout" content="main" />
        <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'all.css')}"></link>
    </head>
    <body>
        <div id="main">
            <h1><g:message code="home.welcome" /></h1>
            <div id="create-message">
                <g:form method="post" controller="message">
                    <label for="user"><g:message code="home.user" /></label>
                    <div class="Control">
                        <input type="text" id="user" name="user" value="" />
                    </div>
                    <label for="message"><g:message code="home.message" /></label>
                    <div class="Control">
                        <textarea id="message" name="message"></textarea>
                    </div>
                    <input type="submit" value="<g:message code="home.send" />" />
                </g:form>
            </div>
            <div id="messages">
                <%if(messages?.size > 0) {%>
                    <ul>
                        <g:each in="${messages}">
                            <li><div class="user"><%= it.user %></div><div class="message"><%= it.text %></div></li>
                        </g:each>
                    </ul>
                <%}%>
            </div>
        </div>
    </body>
</html>
