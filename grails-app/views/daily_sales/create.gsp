<%@ page import="drl2.Item_master" %>
<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'daily_sales.label', default: 'Daily_sales')}" />
        <title>Daily Sales</title>
        <script language="javascript">
            function newwindow() {
                var showme = document.getElementById("testing");
                showme.style.display = "";
            }
        </script>
    </head>
    <body>
        <a href="#create-daily_sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li> <a href="javascript:history.back()"><img src="/assets/skin/back.png"/>&nbsp;&nbsp;Back</a></li>
                <li><g:link class="list" action="index">Daily Sales Report</g:link></li>
            </ul>
        </div>
        <div id="create-daily_sales" class="content scaffold-create" role="main">
            <h1>Daily Sales</h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.daily_sales}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.daily_sales}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form action="save">
                <fieldset class="form">
                    <f:field bean="daily_sales" readonly="" property="date"/>
                    <div ng-app>
					<div class="fieldcontain">
                        <label>Transaction No.</label>
                        <g:field name="trn_no" readonly="" type="text" value="SLS-${new Date().format('ddMMyy')}-${drl2.Daily_sales.executeQuery('select max(c.id)+1 from Daily_sales c').join(',')}" />
                    </div>
                    <div class="fieldcontain">
                        <label>Item 1</label>
                        <g:select ng-model="item_name1" required="" from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name1" />
                        <b>Quantity:</b> <g:field required="" type="number" name="quantity1"/>'
                        <a href="#" style="color: limegreen !important" onclick="newwindow()"><span class="glyphicon glyphicon-plus"></span></a>
                    </div>
                    <div id="testing" style="display: none;" class="fieldcontain">
                        <label>Item 2</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name2" />
                        <b>Quantity:</b> <g:field type="number" name="quantity2"/>
                        <br><label>Item 3</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name3" />
                        <b>Quantity:</b> <g:field type="number" name="quantity3"/>
                        <br><label>Item 4</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name4" />
                        <b>Quantity:</b> <g:field type="number" name="quantity4"/>
                        <br><label>Item 5</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name5" />
                        <b>Quantity:</b> <g:field type="number" name="quantity5"/>
                        <br><label>Item 6</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name6" />
                        <b>Quantity:</b> <g:field type="number" name="quantity6"/>
                        <br><label>Item 7</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name7" />
                        <b>Quantity:</b> <g:field type="number" name="quantity7"/>
                        <br><label>Item 8</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name8" />
                        <b>Quantity:</b> <g:field type="number" name="quantity8"/>
                        <br><label>Item 9</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name9" />
                        <b>Quantity:</b> <g:field type="number" name="quantity9"/>
                        <br><label>Item 10</label>
                        <g:select from="${drl2.Item_master.executeQuery('select distinct c.item_name from Item_master c')}" noSelection="${['':'Select']}" name="item_name10" />
                        <b>Quantity:</b> <g:field type="number" name="quantity10"/>
                    </div>
                    
                    </div>
					
                    <f:field bean="daily_sales" property="price"/>
					<div class="fieldcontain">
					<label>Customer</label>
                        <g:select name="customer_id" from="${drl2.Customer.findAll()}" optionValue="${{it.name}}" optionKey="id" />
						<button type="button" class="btn btn-link" data-toggle="modal" data-target="#myModal">Add Customer</button>
					</div>
                    <f:field bean="daily_sales" property="notes"/>
					<g:hiddenField name="sold_by" value="${session.user.name}" />

                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">
					  <!-- Modal content-->
					  <div class="modal-content">
						<g:include controller="customer" action="create" />
						<div class="modal-footer">
						  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						</div>
					  </div>
				</div>
			</div>
        </div>
    </body>
</html>
