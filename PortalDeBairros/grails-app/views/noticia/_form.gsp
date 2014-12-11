<%@ page import="portaldebairros.Noticia" %>



<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'titulo', 'error')} required">
	<label for="titulo">
		<g:message code="noticia.titulo.label" default="Titulo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titulo" required="" value="${noticiaInstance?.titulo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="noticia.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="descricao" cols="40" rows="5" required="" value="${noticiaInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'imagem', 'error')} ">
	<label for="imagem">
		<g:message code="noticia.imagem.label" default="Imagem" />
		
	</label>
	<g:select name="imagem" from="${portaldebairros.util.Media.list()}" multiple="multiple" optionKey="id" size="5" value="${noticiaInstance?.imagem*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="noticia.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${portaldebairros.Usuario.list()}" optionKey="id" required="" value="${noticiaInstance?.usuario?.id}" class="many-to-one"/>

</div>

