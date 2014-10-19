
<%@ page import="portaldebairros.util.Media" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'media.label', default: 'Media')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-media" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-media" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="arquivo" title="${message(code: 'media.arquivo.label', default: 'Arquivo')}" />
					
						<g:sortableColumn property="formato" title="${message(code: 'media.formato.label', default: 'Formato')}" />
					
						<g:sortableColumn property="nome" title="${message(code: 'media.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="tamanho" title="${message(code: 'media.tamanho.label', default: 'Tamanho')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mediaInstanceList}" status="i" var="mediaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mediaInstance.id}">${fieldValue(bean: mediaInstance, field: "arquivo")}</g:link></td>
					
						<td>${fieldValue(bean: mediaInstance, field: "formato")}</td>
					
						<td>${fieldValue(bean: mediaInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: mediaInstance, field: "tamanho")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mediaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>