
<%@ page import="proyecto.celular.Plan" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'plan.label', default: 'Plan')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'plan.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="abono" title="${message(code: 'plan.abono.label', default: 'Abono')}" />
                        
                            <g:sortableColumn property="empresa" title="${message(code: 'plan.empresa.label', default: 'Empresa')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${planInstanceList}" status="i" var="planInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${planInstance.id}">${fieldValue(bean: planInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: planInstance, field: "abono")}</td>
                        
                            <td>${fieldValue(bean: planInstance, field: "empresa")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${planInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
