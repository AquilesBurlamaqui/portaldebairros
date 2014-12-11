
<%@ page import="portaldebairros.Bairro" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bairro.label', default: 'Bairro')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bairro" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bairro" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bairro">
			
				<g:if test="${bairroInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="bairro.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${bairroInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="bairro.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${bairroInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.noticias}">
				<li class="fieldcontain">
					<span id="noticias-label" class="property-label"><g:message code="bairro.noticias.label" default="Noticias" /></span>
					
						<g:each in="${bairroInstance.noticias}" var="n">
						<span class="property-value" aria-labelledby="noticias-label"><g:link controller="noticia" action="show" id="${n.id}">${n?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.problemas}">
				<li class="fieldcontain">
					<span id="problemas-label" class="property-label"><g:message code="bairro.problemas.label" default="Problemas" /></span>
					
						<g:each in="${bairroInstance.problemas}" var="p">
						<span class="property-value" aria-labelledby="problemas-label"><g:link controller="problema" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.solucoes}">
				<li class="fieldcontain">
					<span id="solucoes-label" class="property-label"><g:message code="bairro.solucoes.label" default="Solucoes" /></span>
					
						<g:each in="${bairroInstance.solucoes}" var="s">
						<span class="property-value" aria-labelledby="solucoes-label"><g:link controller="solucao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.servicos}">
				<li class="fieldcontain">
					<span id="servicos-label" class="property-label"><g:message code="bairro.servicos.label" default="Servicos" /></span>
					
						<g:each in="${bairroInstance.servicos}" var="s">
						<span class="property-value" aria-labelledby="servicos-label"><g:link controller="servico" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.imoveis}">
				<li class="fieldcontain">
					<span id="imoveis-label" class="property-label"><g:message code="bairro.imoveis.label" default="Imoveis" /></span>
					
						<g:each in="${bairroInstance.imoveis}" var="i">
						<span class="property-value" aria-labelledby="imoveis-label"><g:link controller="imovel" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bairroInstance?.imagem}">
				<li class="fieldcontain">
					<span id="imagem-label" class="property-label"><g:message code="bairro.imagem.label" default="Imagem" /></span>
					
                                        <img src="${createLink(action:'displayImagem', id:bairroInstance?.id)}" width="720" height="550" style=" margin-top: 10px; margin-left: 45px"/>
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bairroInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bairroInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
