<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Sarek"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
	<link rel="shortcut icon" href="/assets/erp.ico">
	<style>
		body {
			font-family: "Lato", sans-serif;
		}

		.sidenav {
			height: 100%;
			width: 0;
			position: fixed;
			z-index: 1;
			top: 0;
			right: 0;
			background-color: #f8f8f8;
			overflow-x: hidden;
			transition: 0.5s;
			padding-top: 30px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		}

		.sidenav a {
			padding: 0 8px 0 32px;
			text-decoration: none;
			font-size: 12px !important;
			color: #337ab7 !important;
			display: block;
			transition: 0.3s;
		}
		
		.sidenav h1 {
			padding: 8px 8px 0 10px;
			text-decoration: none;
			font-size: 18px !important;
			display: block;
			transition: 0.3s;
		}

		.sidenav a:hover, .offcanvas a:focus{
			color: #f1f1f1;
		}

		.sidenav .closebtn {
			position: absolute;
			top: 6px;
			right: 13px;
			font-size: 26px !important;
			margin-left: 45px;
		}
		
		.sidenav .logoutbtn {
			position: absolute;
			top: 5px;
			left: 40px;
			margin-left: 0;
		}

		@media screen and (max-height: 450px) {
		  .sidenav {padding-top: 10px;}
		  .sidenav a {font-size: 18px;}
		}
		
		.ft {
		   position: fixed;
		   left: 0;
		   bottom: 0;
		   width: 100%;
		   color: black;
		   text-align: center;
		}
	</style>
	<script>
	function openNav() {
		document.getElementById("mySidenav").style.width = "200px";
	}

	function closeNav() {
		document.getElementById("mySidenav").style.width = "0";
	}
	</script>
</head>
<body>

    <div class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container">
			<div class="navbar-header" style="width: 110%">
            <div id="mySidenav" class="sidenav">
				<g:if test="${session.user}">
					<p style=" font-family: calibri; font-size:16px; color:#337ab7 !important;position: absolute;padding: 4px;top: 4px; left: 10px;">Hi, Mr. ${session.user.name}<p>
				</g:if>
				<g:else>
					<g:javascript>
						window.location.href = '<g:createLink controller="user" action="logout" />';
					</g:javascript>
				</g:else>
			  <g:link style="position: absolute;padding: 4px;top: 30px; left: 10px;" class="index" controller='dashboard' action="index"><img src="/assets/skin/house.png"></g:link>
			  <a class="logoutbtn" style="position: absolute;padding: 4px;top: 30px; left: 35%; color:red !important; font-size: 15px !important;" href="${createLink(action: 'logout', controller: 'User' )}">Log Out</a>
			  <a href="javascript:void(0)" class="closebtn" style="position: absolute;padding: 4px;top: 30px; right: 10px;" onclick="closeNav()">&times;</a>
			  %{--<g:link style="color:blue !important; font-size: 15px !important;" action="module" controller="User">Modules</g:link> --}%
			  <br>
   			  <h1>HR</h1><g:link class="create" controller='employee' action="create">New Employee</g:link>
			  <g:link class="list" controller='employee' action="list">Employee Details Report</g:link>
			  <g:link class="list" controller='phonebook' action="list">Phonebook</g:link>
			  
			  <h1>Sales</h1>
			  <g:link class="create" controller='daily_sales' action="create">Daily Sales</g:link>
              <g:link class="list" controller='daily_sales' action="list">Daily Sales Report</g:link>
			  
			  <h1>Inventory</h1>
			  <g:link class="create" controller='item_master' action="create">New Item Entry</g:link>
              <g:link class="list" controller='item_master' action="list">Item List</g:link>
			  <g:link class="create" controller='stock' action="create">Stock Entry</g:link>
              <g:link class="list" controller='stock' action="list">Stock Maintenance</g:link>
              <g:link class="list" controller='stock' action="report">Stock Report</g:link>
			  <g:link class="create" controller='customer' action="create">New Customer</g:link>
              <g:link class="list" controller='customer' action="list">Customer List</g:link>
			  
			  <h1>Admin</h1>
			  <g:link class="create" controller='company' action="create">Company Setup</g:link>
			  <g:link class="create" controller='user' action="create">Create New User</g:link>
              <g:link class="list" controller='user' action="index">User List</g:link>
			  <g:link class="send" controller='emailSender' action="index">Send Mail</g:link>
			</div>

			<span style="color:white; cursor:pointer; font-size:30px; position: absolute; top: 7px; right: 15px" onclick="openNav()">&#9776;</span>
			<a class="navbar-brand" href="/#" onclick="window.history.back()">
                    <i class="fa grails-icon">
                        <asset:image src="erp.ico"/>
                    </i> qFlow
                </a>
			</div>
        </div>
    </div><br><br>
	<div class="ft">
		<a style="text-decoration:none; font-size: 0.9em; color:black" href="https://i-swifter.com">© iSwifter</a>
	</div>

    <g:layoutBody/>

    <!-- <div class="footer navbar-static-bottom" style="line-height: 15px !important;" align="right" role="contentinfo"><a style="text-decoration:none; color:white;" href="https://www.facebook.com/syed.sarek">Developed by: Syed Abdul Sarek</a>&nbsp;  &nbsp; </div> -->

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>
</body>
</html>
