<%@ page import="portaldebairros.Endereco" %>



<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="endereco.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${enderecoInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="endereco.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${enderecoInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="endereco.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${enderecoInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="endereco.cep.label" default="Cep" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${enderecoInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="endereco.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="bairro" name="bairro.id" from="${portaldebairros.Bairro.list()}" optionKey="id" required="" value="${enderecoInstance?.bairro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="endereco.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${enderecoInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: enderecoInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="endereco.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" required="" value="${enderecoInstance?.pais}"/>

</div>

