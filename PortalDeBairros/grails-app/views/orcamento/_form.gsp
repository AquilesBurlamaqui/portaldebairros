<%@ page import="portaldebairros.Orcamento" %>



<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="orcamento.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${orcamentoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'custo', 'error')} required">
	<label for="custo">
		<g:message code="orcamento.custo.label" default="Custo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="custo" type="number" value="${orcamentoInstance.custo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'arquivo', 'error')} ">
	<label for="arquivo">
		<g:message code="orcamento.arquivo.label" default="Arquivo" />
		
	</label>
	<g:select id="arquivo" name="arquivo.id" from="${portaldebairros.util.Media.list()}" optionKey="id" value="${orcamentoInstance?.arquivo?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'solucao', 'error')} required">
	<label for="solucao">
		<g:message code="orcamento.solucao.label" default="Solucao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solucao" name="solucao.id" from="${portaldebairros.Solucao.list()}" optionKey="id" required="" value="${orcamentoInstance?.solucao?.id}" class="many-to-one"/>

</div>

