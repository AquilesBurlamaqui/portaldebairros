<%@ page import="portaldebairros.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="empresa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${empresaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="empresa.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="endereco" required="" value="${empresaInstance?.endereco}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'CNPJ', 'error')} required">
	<label for="CNPJ">
		<g:message code="empresa.CNPJ.label" default="CNPJ" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="CNPJ" maxlength="18" required="" value="${empresaInstance?.CNPJ}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="empresa.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${empresaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'contato', 'error')} required">
	<label for="contato">
		<g:message code="empresa.contato.label" default="Contato" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="contato" type="number" value="${empresaInstance.contato}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="empresa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${empresaInstance?.email}"/>

</div>

