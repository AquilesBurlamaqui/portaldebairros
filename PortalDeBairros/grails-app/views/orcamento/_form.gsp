<%@ page import="portaldebairros.Orcamento" %>

<div id="mediaList" class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="orcamento.media.label" default="Media" />
		
	</label>
	<g:select name="media" from="${portaldebairros.util.Media.list()}" multiple="true" optionKey="id" size="5" value="${orcamentoInstance?.media*.id}" class="many-to-many" noSelection="['':'-Nenhuma Media selecionada-']"/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: orcamentoInstance, field: 'solucao', 'error')} required">
	<label for="solucao">
		<g:message code="orcamento.solucao.label" default="Solucao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solucao" name="solucao.id" from="${portaldebairros.Solucao.list()}" optionKey="id" required="" value="${orcamentoInstance?.solucao?.id}" class="many-to-one"/>

</div>

