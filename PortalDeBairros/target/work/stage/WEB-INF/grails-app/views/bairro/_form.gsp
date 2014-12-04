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
	<g:textField name="descricao" required="" value="${bairroInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'imagem', 'error')} required">
	<label for="imagem">
		<g:message code="bairro.imagem.label" default="Imagem" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="imagem" name="imagem" />

</div>

