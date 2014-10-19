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

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'imagem', 'error')} required">
	<label for="imagem">
		<g:message code="bairro.imagem.label" default="Imagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="imagem" name="imagem.id" from="${portaldebairros.util.Media.list()}" optionKey="id" required="" value="${bairroInstance?.imagem?.id}" class="many-to-one"/>

</div>

