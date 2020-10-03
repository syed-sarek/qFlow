<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'stock.label', default: 'Stock')}" />
        <title>Stock Update</title>
    </head>
    <body>
        <a href="#edit-stock" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li> <a href="javascript:history.back()"><img src="/assets/skin/back.png"/>&nbsp;&nbsp;Back</a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-stock" class="content scaffold-edit" role="main">
            <h1>Stock Update</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.stock}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.stock}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.stock}" method="PUT">
                <g:hiddenField name="version" value="${this.stock?.version}" />
                <fieldset class="form">
                    <f:field bean="stock" property="item"/>
                    <div ng-app>
                        <div class="fieldcontain"><label>Additional Quantity</label>
                            <input ng-model="first" type="text" autofocus/><br>
                        </div>
                        <div class="fieldcontain"><label>New Quantity</label>
                           <g:field name="stock_quantity" readonly type="number" value="{{ first-- ${this.stock?.stock_quantity} }}" id="${stock.id}"/>
                        </div>
                    </div>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
