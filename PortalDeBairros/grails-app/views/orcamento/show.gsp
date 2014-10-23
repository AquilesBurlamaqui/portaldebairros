
<%@ page import="portaldebairros.Orcamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-orcamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-orcamento" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list orcamento">
			
				<g:if test="${orcamentoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="orcamento.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${orcamentoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orcamentoInstance?.custo}">
				<li class="fieldcontain">
					<span id="custo-label" class="property-label"><g:message code="orcamento.custo.label" default="Custo" /></span>
					
						<span class="property-value" aria-labelledby="custo-label"><g:fieldValue bean="${orcamentoInstance}" field="custo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${orcamentoInstance?.arquivo}">
				<li class="fieldcontain">
					<span id="arquivo-label" class="property-label"><g:message code="orcamento.arquivo.label" default="Arquivo" /></span>
					
						<span class="property-value" aria-labelledby="arquivo-label"><g:link controller="media" action="show" id="${orcamentoInstance?.arquivo?.id}">${orcamentoInstance?.arquivo?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${orcamentoInstance?.solucao}">
				<li class="fieldcontain">
					<span id="solucao-label" class="property-label"><g:message code="orcamento.solucao.label" default="Solucao" /></span>
					
						<span class="property-value" aria-labelledby="solucao-label"><g:link controller="solucao" action="show" id="${orcamentoInstance?.solucao?.id}">${orcamentoInstance?.solucao?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:orcamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${orcamentoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
