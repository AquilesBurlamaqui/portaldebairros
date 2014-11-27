<%@ page import="portaldebairros.util.Media" %>



<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="media.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${mediaInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: mediaInstance, field: 'file', 'error')} ">
	<label for="file">
		<g:message code="media.file.label" default="File" />
		
	</label>
	<input type="file" id="file" name="file" />

</div>

