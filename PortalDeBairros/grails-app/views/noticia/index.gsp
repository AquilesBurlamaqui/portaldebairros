
<%@ page import="portaldebairros.Noticia" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'noticia.label', default: 'Noticia')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-noticia" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-noticia" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="titulo" title="${message(code: 'noticia.titulo.label', default: 'Titulo')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'noticia.descricao.label', default: 'Descricao')}" />
					
						<th><g:message code="noticia.usuario.label" default="Usuario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${noticiaInstanceList}" status="i" var="noticiaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${noticiaInstance.id}">${fieldValue(bean: noticiaInstance, field: "titulo")}</g:link></td>
					
						<td>${fieldValue(bean: noticiaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: noticiaInstance, field: "usuario")}</td>
                                                 <td>
                                                    <g:each in="${noticiaInstance.imagem}" var="m">
                                                        <img width="150px" height="150px" title= "${m?.encodeAsHTML()}" class="Media" src="${createLink(controller:'media', action:'viewImage', id:"${m.id}")}" />
                                                    </g:each>
                                                </td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${noticiaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
