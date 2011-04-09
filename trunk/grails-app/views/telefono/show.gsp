
<%@ page import="proyecto.celular.Telefono" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'telefono.label', default: 'Telefono')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: telefonoInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.marca.label" default="Marca" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: telefonoInstance, field: "marca")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.modelo.label" default="Modelo" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: telefonoInstance, field: "modelo")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.bluetooth.label" default="Bluetooth" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.bluetooth}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.camara.label" default="Camara" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.camara}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.mpCamara.label" default="Mp Camara" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: telefonoInstance, field: "mpCamara")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.planes.label" default="Planes" /></td>
                            
                            <td valign="top" style="text-align: left;" class="value">
                                <ul>
                                <g:each in="${telefonoInstance.planes}" var="p">
                                    <li><g:link controller="plan" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
                                </g:each>
                                </ul>
                            </td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.teclado.label" default="Teclado" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.teclado}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.threeG.label" default="Three G" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.threeG}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.touchScreen.label" default="Touch Screen" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.touchScreen}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="telefono.wifi.label" default="Wifi" /></td>
                            
                            <td valign="top" class="value"><g:formatBoolean boolean="${telefonoInstance?.wifi}" /></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${telefonoInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
