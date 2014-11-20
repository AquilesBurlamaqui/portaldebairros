
<%@ page import="portaldebairros.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-empresa" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list empresa">
			
				<g:if test="${empresaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="empresa.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${empresaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.endereco}">
				<li class="fieldcontain">
					<span id="endereco-label" class="property-label"><g:message code="empresa.endereco.label" default="Endereco" /></span>
					
						<span class="property-value" aria-labelledby="endereco-label"><g:fieldValue bean="${empresaInstance}" field="endereco"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.CNPJ}">
				<li class="fieldcontain">
					<span id="CNPJ-label" class="property-label"><g:message code="empresa.CNPJ.label" default="CNPJ" /></span>
					
						<span class="property-value" aria-labelledby="CNPJ-label"><g:fieldValue bean="${empresaInstance}" field="CNPJ"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="empresa.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${empresaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.contato}">
				<li class="fieldcontain">
					<span id="contato-label" class="property-label"><g:message code="empresa.contato.label" default="Contato" /></span>
					
						<span class="property-value" aria-labelledby="contato-label"><g:fieldValue bean="${empresaInstance}" field="contato"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${empresaInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="empresa.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${empresaInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
