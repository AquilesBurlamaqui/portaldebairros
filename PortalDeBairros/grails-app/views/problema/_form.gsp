<%@ page import="portaldebairros.Problema" %>

<div id="mediaList" name="mediaList" class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="problema.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${portaldebairros.util.Media.list()}" multiple="true" optionKey="id" size="5" value="${problemaInstance?.media*.id}" class="many-to-many" noSelection="['':'-Nenhuma Media selecionada-']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="problema.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${problemaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="problema.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${problemaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="problema.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field id="lat" name="latitude" value="${fieldValue(bean: problemaInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="problema.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field id="long" name="longitude" value="${fieldValue(bean: problemaInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="problema.address.label" default="address" />
		
	</label>
	<g:field id="add" name="address" value="${fieldValue(bean: problemaInstance, field: 'address')}" required=""/>

</div>