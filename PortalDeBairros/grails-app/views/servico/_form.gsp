<%@ page import="portaldebairros.Servico" %>



<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="servico.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${servicoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="servico.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${portaldebairros.Usuario.list()}" optionKey="id" required="" value="${servicoInstance?.usuario?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="servico.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${servicoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicoInstance, field: 'imagem', 'error')} required">
	<label for="imagem">
		<g:message code="servico.imagem.label" default="Imagem" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="imagem" name="imagem.id" from="${portaldebairros.util.Media.list()}" optionKey="id" required="" value="${servicoInstance?.imagem?.id}" class="many-to-one"/>

</div>

