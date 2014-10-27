
<%@ page import="portaldebairros.Problema" %>
<%@ page import="portaldebairros.Solucao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'problema.label', default: 'Problema')}" />
                <g:set var="entityName1" value="${message(code: 'solucao.label', default: 'Solucao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-problema" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                                <li><g:link class="create" action="createSolucao"><g:message code="Solucao.new.label" args="[entityName1]" /></g:link></li>
			</ul>
		</div>
		<div id="show-problema" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list problema">
			
				<g:if test="${problemaInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="problema.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${problemaInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${problemaInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="problema.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${problemaInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${problemaInstance?.latitude}">
				<li class="fieldcontain">
					<span id="latitude-label" class="property-label"><g:message code="problema.latitude.label" default="Latitude" /></span>
					
						<span class="property-value" aria-labelledby="latitude-label"><g:fieldValue bean="${problemaInstance}" field="latitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${problemaInstance?.longitude}">
				<li class="fieldcontain">
					<span id="longitude-label" class="property-label"><g:message code="problema.longitude.label" default="Longitude" /></span>
					
						<span class="property-value" aria-labelledby="longitude-label"><g:fieldValue bean="${problemaInstance}" field="longitude"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${problemaInstance?.media}">
				<li class="fieldcontain">
					<span id="media-label" class="property-label"><g:message code="problema.media.label" default="Media" /></span>
					
						<g:each in="${problemaInstance.media}" var="m">
						<span class="property-value" aria-labelledby="media-label"><g:link controller="media" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${problemaInstance?.solucoes}">
				<li class="fieldcontain">
					<span id="solucoes-label" class="property-label"><g:message code="problema.solucoes.label" default="Solucoes" /></span>
					
						<g:each in="${problemaInstance.solucoes}" var="s">
						<span class="property-value" aria-labelledby="solucoes-label"><g:link controller="solucao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:problemaInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${problemaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
