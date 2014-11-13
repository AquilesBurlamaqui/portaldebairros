<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'orcamento.label', default: 'Orcamento')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
                <g:javascript src="jquery-1.2.2.pack.js" />
                <script type="text/javascript" language="javascript">
                       
                    
                    $(document).ready(function() { /// Wait till page is loaded
                        $('#enviar').click(function(){
                            var nomeFile = $("#arquivo").val().split('\\').pop();
                            var format = $("#arquivo").val().split('.').pop();
                            var sizeB = $("#arquivo")[0].files[0].size;
                            var sizeM = (sizeB / (1024*1024)).toFixed(2); 
                            if((format == 'pdf') && (sizeM < 2)){
                                $('#upload').submit();
                                $("#arquivo").val("");
                                alert("O arquivo " + nomeFile + " está sendo adicionado.");
                            }
                            else{
                                alert("Envie arquivos de imagem no formato: .pdf e com menos de 2mb");
                                $("#arquivo").val("");
                            }
                        });
                    }); //// End of Wait till page is loaded
                    function setFrameLoaded(){
                        $('#mediaList').load("create.gsp #mediaList");
                    }
          
                    </script>
	</head>
	<body>
		<a href="#create-orcamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-orcamento" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${orcamentoInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${orcamentoInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                              <center><br/>
                              <g:uploadForm id="upload" name="upload" action="upload" target="iframe"> 
                              <input id="arquivo" name="arquivo" type="file" accept="application/pdf"/> <input id="enviar" name="enviar" type='button' value="enviar"/>
                              </g:uploadForm>
                              <iframe id="iframe" onload='setFrameLoaded();' name="iframe" style="display: none;"></iframe>
                              
                         <g:message message="Envie o arquivo PDF e depois o selecione em baixo no campo File" /> <br/></center>
                        
			<g:form url="[resource:orcamentoInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
