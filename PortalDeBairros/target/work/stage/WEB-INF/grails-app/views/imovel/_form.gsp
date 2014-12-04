<%@ page import="portaldebairros.Imovel" %>



<div class="fieldcontain ${hasErrors(bean: imovelInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="imovel.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${imovelInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imovelInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="imovel.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${imovelInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imovelInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="imovel.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endereco" name="endereco.id" from="${portaldebairros.Endereco.list()}" optionKey="id" required="" value="${imovelInstance?.endereco?.id}" class="many-to-one"/>

</div>

