
<%@ page import="portaldebairros.Orcamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-orcamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-orcamento" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'orcamento.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="custo" title="${message(code: 'orcamento.custo.label', default: 'Custo')}" />
					
						<th><g:message code="orcamento.file.label" default="File" /></th>
					
						<th><g:message code="orcamento.solucao.label" default="Solucao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${orcamentoInstanceList}" status="i" var="orcamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${orcamentoInstance.id}">${fieldValue(bean: orcamentoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: orcamentoInstance, field: "custo")}</td>
					
						<td>${fieldValue(bean: orcamentoInstance, field: "file")}</td>
					
						<td>${fieldValue(bean: orcamentoInstance, field: "solucao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${orcamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
