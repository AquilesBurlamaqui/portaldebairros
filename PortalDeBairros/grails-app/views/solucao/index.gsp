
<%@ page import="portaldebairros.Solucao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'solucao.label', default: 'Solucao')}" />
                <g:set var="entityName1" value="${message(code: 'Orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solucao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                                <li><g:link class="create" action="createOrcamento"><g:message code="default.new.label" args="[entityName1]" /></g:link></li>
			</ul>
		</div>
		<div id="list-solucao" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'solucao.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'solucao.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="solucao.problema.label" default="Problema" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solucaoInstanceList}" status="i" var="solucaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${solucaoInstance.id}">${fieldValue(bean: solucaoInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: solucaoInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: solucaoInstance, field: "problema")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solucaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
