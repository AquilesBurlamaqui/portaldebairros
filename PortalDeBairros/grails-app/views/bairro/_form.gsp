<%@ page import="portaldebairros.Bairro" %>



<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="bairro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${bairroInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="bairro.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${bairroInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="bairro.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${portaldebairros.util.Media.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.media*.id}" class="many-to-many"/>

</div>

