<%@ page import="portaldebairros.Solucao" %>



<div class="fieldcontain ${hasErrors(bean: solucaoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="solucao.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${solucaoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solucaoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="solucao.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${solucaoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solucaoInstance, field: 'problema', 'error')} required">
	<label for="problema">
		<g:message code="solucao.problema.label" default="Problema" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="problema" name="problema.id" from="${portaldebairros.Problema.list()}" optionKey="id" required="" value="${solucaoInstance?.problema?.id}" class="many-to-one"/>

</div>

