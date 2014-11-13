<!DOCTYPE html>
<html>
	<head>
                <meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'problema.label', default: 'Problema')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
                <script src="https://maps.googleapis.com/maps/api/js?v=3.exp"></script>
                <g:javascript src="map.js" />
                <g:javascript src="jquery-1.2.2.pack.js" />
                <style>
                            #map-canvas {
                              height:300px;
                              wight:100%;
                              margin-left:15%;
                              margin-right:15%;
                            }
                            #panel {
                              position: absolute;
                              left: 50%;
                              margin-left: -180px;
                              z-index: 5;
                              background-color: #fff;
                              padding: 5px;
                              border: 1px solid #999;
                          }
                 </style>
                    <script type="text/javascript" language="javascript">
                       
                    
                    $(document).ready(function() { /// Wait till page is loaded
                        $('#enviar').click(function(){
                            var nomeFile = $("#arquivo").val().split('\\').pop();
                            var format = $("#arquivo").val().split('.').pop();
                            var sizeB = $("#arquivo")[0].files[0].size;
                            var sizeM = (sizeB / (1024*1024)).toFixed(2); 
                         if(((format == 'jpg') || (format == 'JPG') || (format == 'png') || (format == 'gif')) && (sizeM < 3)){
                                $('#upload').submit();
                                $("#arquivo").val("");
                                alert("O arquivo " + nomeFile + " está sendo adicionado.");
                         }
                         else{
                                alert("Envie arquivos de imagem nos formatos: .jpg, .png, .gif e com menos de 3mb");
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
		<a href="#create-problema" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="create-problema" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${problemaInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${problemaInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                          <div id="panel">
                                        <input id="address" type="textbox" >
                                        <input type="button" value="Pesquisar" onclick="codeAddress()">
                                        <input type='submit' value="Gravar" onclick="save()">
                          </div>
                          <div id="map-canvas"> </div>
                        
                      <center><br/>
                              <g:uploadForm id="upload" name="upload" action="upload" target="iframe"> 
                              <input id="arquivo" name="arquivo" type="file" accept="image/*"/> <input id="enviar" name="enviar" type='button' value="enviar"/>
                              </g:uploadForm>
                              <iframe id="iframe" onload='setFrameLoaded();' name="iframe" style="display: none;"></iframe>
                              
                         <g:message message="Envie uma imagem e depois o selecione em baixo no campo File" /> <br/></center>
                         <div id="show" align="center"></div>
			<g:form url="[resource:problemaInstance, action:'save']" >
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
