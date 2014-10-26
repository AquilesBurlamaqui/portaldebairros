<%@ page import="portaldebairros.Problema" %>

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
	<g:field name="latitude" value="${fieldValue(bean: problemaInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="problema.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: problemaInstance, field: 'longitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="problema.imagem.label" default="Imagem" />
		
	</label>
	<g:select id="imagem" name="imagem.id" from="${portaldebairros.util.Media.list()}" optionKey="id" value="${problemaInstance?.imagem?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'solucoes', 'error')} ">
	<label for="solucoes">
		<g:message code="problema.solucoes.label" default="Solucoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${problemaInstance?.solucoes?}" var="s">
    <li><g:link controller="solucao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solucao" action="create" params="['problema.id': problemaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solucao.label', default: 'Solucao')])}</g:link>
</li>
</ul>


</div>

