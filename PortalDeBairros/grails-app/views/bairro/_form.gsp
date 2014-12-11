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

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'noticias', 'error')} ">
	<label for="noticias">
		<g:message code="bairro.noticias.label" default="Noticias" />
		
	</label>
	<g:select name="noticias" from="${portaldebairros.Noticia.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.noticias*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'problemas', 'error')} ">
	<label for="problemas">
		<g:message code="bairro.problemas.label" default="Problemas" />
		
	</label>
	<g:select name="problemas" from="${portaldebairros.Problema.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.problemas*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'solucoes', 'error')} ">
	<label for="solucoes">
		<g:message code="bairro.solucoes.label" default="Solucoes" />
		
	</label>
	<g:select name="solucoes" from="${portaldebairros.Solucao.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.solucoes*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'servicos', 'error')} ">
	<label for="servicos">
		<g:message code="bairro.servicos.label" default="Servicos" />
		
	</label>
	<g:select name="servicos" from="${portaldebairros.Servico.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.servicos*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'imoveis', 'error')} ">
	<label for="imoveis">
		<g:message code="bairro.imoveis.label" default="Imoveis" />
		
	</label>
	<g:select name="imoveis" from="${portaldebairros.Imovel.list()}" multiple="multiple" optionKey="id" size="5" value="${bairroInstance?.imoveis*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bairroInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="bairro.imagem.label" default="Imagem" />
		
	</label>
	<input type="file" id="imagem" name="imagem" />

</div>

