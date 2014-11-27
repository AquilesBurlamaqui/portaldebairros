
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
					
						<g:sortableColumn property="name" title="${message(code: 'media.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="file" title="${message(code: 'media.file.label', default: 'File')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mediaInstanceList}" status="i" var="mediaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mediaInstance.id}">${fieldValue(bean: mediaInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: mediaInstance, field: "file")}</td>
					
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
