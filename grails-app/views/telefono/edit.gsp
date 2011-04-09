

<%@ page import="proyecto.celular.Telefono" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${telefonoInstance}">
            <div class="errors">
                <g:renderErrors bean="${telefonoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${telefonoInstance?.id}" />
                <g:hiddenField name="version" value="${telefonoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="marca"><g:message code="telefono.marca.label" default="Marca" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'marca', 'errors')}">
                                    <g:textField name="marca" value="${telefonoInstance?.marca}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="modelo"><g:message code="telefono.modelo.label" default="Modelo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'modelo', 'errors')}">
                                    <g:textField name="modelo" value="${telefonoInstance?.modelo}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="bluetooth"><g:message code="telefono.bluetooth.label" default="Bluetooth" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'bluetooth', 'errors')}">
                                    <g:checkBox name="bluetooth" value="${telefonoInstance?.bluetooth}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="camara"><g:message code="telefono.camara.label" default="Camara" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'camara', 'errors')}">
                                    <g:checkBox name="camara" value="${telefonoInstance?.camara}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="mpCamara"><g:message code="telefono.mpCamara.label" default="Mp Camara" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'mpCamara', 'errors')}">
                                    <g:textField name="mpCamara" value="${telefonoInstance?.mpCamara}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="planes"><g:message code="telefono.planes.label" default="Planes" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'planes', 'errors')}">
                                    <g:select name="planes" from="${proyecto.celular.Plan.list()}" multiple="yes" optionKey="id" size="5" value="${telefonoInstance?.planes*.id}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="teclado"><g:message code="telefono.teclado.label" default="Teclado" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'teclado', 'errors')}">
                                    <g:checkBox name="teclado" value="${telefonoInstance?.teclado}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="threeG"><g:message code="telefono.threeG.label" default="Three G" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'threeG', 'errors')}">
                                    <g:checkBox name="threeG" value="${telefonoInstance?.threeG}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="touchScreen"><g:message code="telefono.touchScreen.label" default="Touch Screen" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'touchScreen', 'errors')}">
                                    <g:checkBox name="touchScreen" value="${telefonoInstance?.touchScreen}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="wifi"><g:message code="telefono.wifi.label" default="Wifi" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: telefonoInstance, field: 'wifi', 'errors')}">
                                    <g:checkBox name="wifi" value="${telefonoInstance?.wifi}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
