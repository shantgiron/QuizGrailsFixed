<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Crear Contacto</title>
    <asset:stylesheet src="application.css"/>

</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Crear Contacto</div>
        <div class="card-body">

            <div class="nav" role="navigation">
                <ul >
                    <li ><a  href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                    <li ><g:link  action="index"><g:message code="Lista Usuarios" args="[entityName]" /> </g:link></li>
                </ul>
            </div>
            <div id="create-usuario" class="content scaffold-create" role="main">
                <h1>Crear Usuario</h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.usuario}">
                    <ul class="errors" role="alert">
                        <g:eachError bean="${this.usuario}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </g:hasErrors>
                <g:form controller="usuario" action="save" method="POST">


                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='username'>Username
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="username" class="form-control" required="" id="username" />
                        </div>
                    </div>
                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='password'>Password
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="password" class="form-control" required="" id="password" />
                        </div>
                    </div>
                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='nombre'>Nombre
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="nombre" class="form-control" required="" id="nombre" />
                        </div>
                    </div>

                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='apellido'>Apellido
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="apellido" class="form-control" value="" required="" id="apellido" />
                        </div>
                    </div>

                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='cedula'>Cedula
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="cedula" class="form-control" value="" required="" id="cedula" />
                        </div>
                    </div>

                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='email'>Email
                                <span class='required-indicator'>*</span>
                            </label><input type="text" name="email" class="form-control" value="" required="" id="email" />
                        </div>
                    </div>
                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='fechaNacimiento'>Fecha Nacimiento
                                <span class='required-indicator'>*</span>
                            </label><input id="date" type="date" id="fechanacimiento" name="fechanacimiento">/>
                        </div>
                    </div>

                    <div class='fieldcontain required'>
                        <div class="form-group">
                            <label for='evento'>Eventos
                                <span class='required-indicator'>*</span>
                            </label>
                            <select name="evento"  class="form-control" required="" id="evento" multiple >
                                <g:each in ="${eventos}" var = "x">
                                    <option value="${x.id}">${x.nombre}</option>
                                </g:each>
                            </select>
                        </div>
                    </div>

                    <fieldset class="buttons">
                        <div class="form-group">
                            <g:submitButton name="create"  class="save form-control" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </div>
                    </fieldset>
                </g:form>
            </div>


        </div>
    </div>
</div>
<asset:javascript src="application.js"/>


</body>


</html>