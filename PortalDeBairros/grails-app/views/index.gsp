<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
                    
                        #log{
                        background-color: LightGray;
                        }
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 10px 10px 10px 50px;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		
  <!--formulario de usuario e senha-->  
<sec:ifNotLoggedIn>
  <div id="log">
  <form method="POST" action="${resource(file: 'j_spring_security_check')}">
  <table>
      <td>Username:</td><td><g:textField name="j_username"/></td>
      <td>Password:</td><td><input name="j_password" type="password"/></td>
      <td colspan="2"><g:submitButton name="login" value="Login"/></td>
  </table>
</form>
</div>
</sec:ifNotLoggedIn>

<sec:ifLoggedIn>
    <div id="log">
    <td>Usuário autenticado com sucesso!!</td>
    <td><g:link controller="logout">Logout</g:link></td>
    </div>
</sec:ifLoggedIn>

		<div id="page-body" role="main">
			

			<div id="controller-list" role="navigation">
				<h2>Menu</h2>
				<ul>
					<!--<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
			</g:each>-->
                                        <g:link controller="usuario" action="create">Cadastrar Usuario</g:link></br>
                                        <g:link controller="empresa" action="index"><asset:image src="agencia.png" alt="Empresas" width="100" height="100"/></g:link></br>
                                        <g:link controller="servico" action="index">Listar Servicos</g:link></br>
                                        <g:link controller="usuario" action="index">Listar Usuario</g:link></br>
                                        <g:link controller="bairro" action="index">Listar Bairros</g:link></br>
                                        <g:link controller="noticia" action="index">Listar Noticias</g:link></br>
                                        
                                      
				</ul>
			</div>
		</div>
	</body>
</html>
