<g:select name="telefono.marca" from="${telefonos}" optionKey="id"   />

<g:each in="${plans}" status="i" var="palnsInstance">
	<g:message code="plan.nombre.label" /> ${fieldValue(bean: palnsInstance, field: "nombre")}<br/>
	<g:message code="plan.empresa.label" /> ${fieldValue(bean: palnsInstance, field: "empresa")}<br/>
	<g:message code="plan.abono.label" /> ${fieldValue(bean: palnsInstance, field: "abono")}<br/>
</g:each>