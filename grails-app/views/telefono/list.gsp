
<%@ page import="proyecto.celular.Telefono" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'telefono.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="marca" title="${message(code: 'telefono.marca.label', default: 'Marca')}" />
                        
                            <g:sortableColumn property="modelo" title="${message(code: 'telefono.modelo.label', default: 'Modelo')}" />
                        
                            <g:sortableColumn property="bluetooth" title="${message(code: 'telefono.bluetooth.label', default: 'Bluetooth')}" />
                        
                            <g:sortableColumn property="camara" title="${message(code: 'telefono.camara.label', default: 'Camara')}" />
                        
                            <g:sortableColumn property="mpCamara" title="${message(code: 'telefono.mpCamara.label', default: 'Mp Camara')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${telefonoInstanceList}" status="i" var="telefonoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${telefonoInstance.id}">${fieldValue(bean: telefonoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: telefonoInstance, field: "marca")}</td>
                        
                            <td>${fieldValue(bean: telefonoInstance, field: "modelo")}</td>
                        
                            <td><g:formatBoolean boolean="${telefonoInstance.bluetooth}" /></td>
                        
                            <td><g:formatBoolean boolean="${telefonoInstance.camara}" /></td>
                        
                            <td>${fieldValue(bean: telefonoInstance, field: "mpCamara")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${telefonoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
