<%@ page import="drl2.Item_masterController" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'item_master.label', default: 'Item_master')}" />
        <title>New Item Entry</title>
    </head>
    <body>
        <a href="#create-item_master" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li> <a href="javascript:history.back()"><img src="/assets/skin/back.png"/>&nbsp;&nbsp;Back</a></li>
                <li><g:link class="list" action="list">Item List</g:link></li>
            </ul>
        </div>
        <div id="create-item_master" class="content scaffold-create" role="main">
            <h1>New Item Entry</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.item_master}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.item_master}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    %{--<f:all bean="item_master"/>--}%
                    <div class="fieldcontain">
                        <label>Category</label>
                        <g:select from="${drl2.Item_category.executeQuery('select distinct c.category from Item_category c')}" name="category" />
						<button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Add Category</button>
					</div>
                    <f:field bean="item_master" property="item_name"/>
                    <f:field bean="item_master" property="description"/>
                    <f:field bean="item_master" property="model"/>
                    <f:field bean="item_master" property="brand"/>
                    <f:field bean="item_master" property="unit"/>
                    <f:field bean="item_master" property="unit_price"/>
                    <f:field bean="item_master" property="remarks"/>
                    <f:field bean="item_master" property="added_date"/>
                    %{--<g:hiddenField name="added_date" id="added_date" value="${new Date().format( 'dd MMM yyyy' )}" />--}%
                    <g:hiddenField name="added_by" id="added_by" value="${session.user}" />
                    %{--<g:hiddenField name="trn_no" id="trn_no" value="REQ-${drl2.Item_category.executeQuery('select max(c.sl_no)+1 from Item_master c').join(',')}" />--}%

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					  <!-- Modal content-->
					  <div class="modal-content">
						<g:include controller="item_category" action="create" />
						<div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					  </div>
				</div>
			</div>
        </div>
    </body>
</html>
