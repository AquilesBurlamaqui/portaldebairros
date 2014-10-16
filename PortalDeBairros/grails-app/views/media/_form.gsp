<%@ page import="portaldebairros.util.Media" %>



<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'arquivo', 'error')} required">
	<label for="arquivo">
		<g:message code="media.arquivo.label" default="Arquivo" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="arquivo" name="arquivo" />

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'formato', 'error')} required">
	<label for="formato">
		<g:message code="media.formato.label" default="Formato" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="formato" required="" value="${mediaInstance?.formato}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="media.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${mediaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'tamanho', 'error')} required">
	<label for="tamanho">
		<g:message code="media.tamanho.label" default="Tamanho" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tamanho" type="number" value="${mediaInstance.tamanho}" required=""/>

</div>

