
<%@ page import="portaldebairros.Problema" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'problema.label', default: 'Problema')}" />
                <g:set var="entityName1" value="${message(code: 'solucao.label', default: 'Solucao')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
                <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
                <g:javascript src="map.js" />
                <g:javascript src="jquery-1.2.2.pack.js" />
                   <style>
                            #map-canvas {
                              height:300px;
                              wight:100%;
                              margin-left:15%;
                              margin-right:15%;
                            }
                            #panel {
                              position: absolute;
                              left: 50%;
                              margin-left: -180px;
                              z-index: 5;
                              background-color: #fff;
                              padding: 5px;
                              border: 1px solid #999;
                          }
                 </style>
                    <script type="text/javascript" language="javascript">
                                var lat, long, latlong;
                                lat = ${problemas.latitude};
                                long = ${problemas.longitude};
                                for( i = 0; i < lat.length;i++){
                                    
                                }
                                var marker = new google.maps.Marker({
                                        map: map,
                                        position: [lat[i], long[i]]
                                    });
                                
                    
                  
                    
                    
          
                    </script>
	</head>
	<body>
		<a href="#list-problema" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                                <li><g:link class="create" action="createSolucao"><g:message code="default.new.label" args="[entityName1]" /></g:link></li>
			</ul>
		</div>
		<div id="list-problema" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
                        <div id="map-canvas"> </div>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'problema.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="descricao" title="${message(code: 'problema.descricao.label', default: 'Descricao')}" />
					
						<g:sortableColumn property="latitude" title="${message(code: 'problema.latitude.label', default: 'Latitude')}" />
					
						<g:sortableColumn property="longitude" title="${message(code: 'problema.longitude.label', default: 'Longitude')}" />
					        
                                                <g:sortableColumn property="address" title="${message(code: 'problema.address.label', default: 'Address')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${problemaInstanceList}" status="i" var="problemaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${problemaInstance.id}">${fieldValue(bean: problemaInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: problemaInstance, field: "descricao")}</td>
					
						<td>${fieldValue(bean: problemaInstance, field: "latitude")}</td>
					
						<td>${fieldValue(bean: problemaInstance, field: "longitude")}</td>
                                                
                                                <td>${fieldValue(bean: problemaInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${problemaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
