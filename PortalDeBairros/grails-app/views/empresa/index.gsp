
<%@ page import="portaldebairros.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-empresa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'empresa.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="endereco" title="${message(code: 'empresa.endereco.label', default: 'Endereco')}" />
					
						<g:sortableColumn property="CNPJ" title="${message(code: 'empresa.CNPJ.label', default: 'CNPJ')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'empresa.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="contato" title="${message(code: 'empresa.contato.label', default: 'Contato')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'empresa.email.label', default: 'Email')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${empresaInstanceList}" status="i" var="empresaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${empresaInstance.id}">${fieldValue(bean: empresaInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: empresaInstance, field: "endereco")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "CNPJ")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "contato")}</td>
					
						<td>${fieldValue(bean: empresaInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${empresaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
