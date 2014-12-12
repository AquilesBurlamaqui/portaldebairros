<%@ page import="portaldebairros.Noticia" %>
<g:javascript src="ckeditor/ckeditor.js"/>

<div id="mediaList" name="mediaList" class="fieldcontain ${hasErrors(bean: problemaInstance, field: 'media', 'error')} ">
	<label for="media">
		<g:message code="problema.media.label" default="Media" />
		
	</label>
	<g:select name="imagem" from="${portaldebairros.util.Media.list()}" multiple="true" optionKey="id" size="5" value="${problemaInstance?.media*.id}" class="many-to-many" noSelection="['':'-Nenhuma Media selecionada-']"/>

</div>

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
	<g:textArea name="descricao"/>
        <script>
            CKEDITOR.replace( 'descricao' );
        </script>
</div>



<div class="fieldcontain ${hasErrors(bean: noticiaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="noticia.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${portaldebairros.Usuario.list()}" optionKey="id" required="" value="${noticiaInstance?.usuario?.id}" class="many-to-one"/>

</div>

