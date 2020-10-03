<%@ page import="drl2.Employee" %>

<html>
<head lang="en">
	<meta name="layout" content="mymain" />
	<g:javascript library="jquery"/>
	<script src="${resource(dir: '/drl2/assets/javascripts/', file: 'jquery-2.2.0.min.js')}"></script>
	<script type="text/javascript">
        $(document).ready(function(){
            $("#filter").keyup(function(){
                // Retrieve the input field text and reset the count to zero
                var filter = $(this).val(), count = 0;
                // Loop through the comment list
                $(".srch h4").each(function(){
                    // If the list item does not contain the text phrase fade it out
                    if ($(this).text().search(new RegExp(filter, "i")) < 0) {
                        $(this).parents("#nop").fadeOut();
                        // Show the list item if the phrase matches and increase the count by 1
                    } else {
                        $(this).parents("#nop").show();
                        count++;
                    }
                });

                // Update the count
                var numberItems = count;
                $("#filter-count1").text("Result found "+count);
                e.preventDefault();
                $( this ).parents( 'li' ).toggleClass( 'is-active' );
            });
        });
	</script>
	<script>
        function myFunction() {
            // Retrieve the input field text and reset the count to zero
            var designation =document.getElementById("designation").value;
            // Loop through the comment list
            $(".srch h5").each(function(){
                // If the list item does not contain the text phrase fade it out
                if ($(this).text().search(new RegExp(designation, "i")) < 0) {
                    $(this).parents("#nop").fadeOut();
                    // Show the list item if the phrase matches and increase the count by 1
                } else {
                    $(this).parents("#nop").show();
                    count++;
                }
            });
        }
	</script>
	<style>
	body {
		font-family: "Lato", sans-serif;
	}

	.sidenav {
		height: 100%;
		width: 0;
		position: fixed;
		top: 40px;
		left: 0;
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

	@media screen and (max-height: 450px) {
		.sidenav {padding-top: 10px;}
		.sidenav a {font-size: 18px;}
	}
	@media only screen and (max-width: 756px) {
		.sidenav {
			display: none;
		}
		#abcd {
			padding-left: 0 !important;
		}
		#efg {
			display: none;
		}
		#inp1 {
			width: 90% !important;
		}
	}
	</style>

	<title>Phonebook</title>
</head>

<body>
	<div class = "panel-heading" style="position:relative; z-index:1;background-color: #2a56c6 !important;box-shadow: 0 10px 20px -12px rgba(0, 0, 0, 0.42), 0 3px 20px 0 rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);border-radius: 0; height: 50px !important;">
		<h1 align="left" style="color:white; margin: 0.3em 0 0.3em 1em !important;">&nbsp;qFlow Phonebook</h1>
		<h6 align="right" style="color:white; margin: -2.2em 0.3em 0.3em 1em !important;">&nbsp;${new Date().format('dd MMM yyyy')}</h6>
		<h6 align="right" style="color:white; margin: 0 1.2em 0.3em 1em !important;">&nbsp;${new Date().format('h:mm a')}</h6>
	</div>
	<div style="width: 0;" class="sidenav">
		<p style="color: #337ab7; padding-left: 10px"> Advanced Search </p>
		<div align="left" style="padding-left: 10px">
			<hr/><br><g:select class="btn btn-default dropdown-toggle" name="unit" from="${['CO', 'DAL', 'DRL', 'GGL', 'AWL', 'AFL', 'AAL', 'DGL', 'DWL', 'DDL', 'DBO', 'DFL']}" value="${unit}" noSelection="['':'Select Unit']"/><br><br>
			<g:select class="btn btn-default dropdown-toggle" name="department" from="${['HR Admin', 'IT', 'Merchandising', 'Commercial', 'Internal Audit', 'Finance & Accounts', 'IE', 'Production', 'Quality', 'CAD']}" value="${department}" noSelection="['':'Select Department']"/><br><br>
			<g:select id="designation" class="btn btn-default dropdown-toggle" name="designation" from="${["Executive", "Staff", "Officer"]}" value="${designation}" noSelection="['':'Select Designation']" onchange="myFunction()"/><br><br><hr/><br>
		</div>
		<g:link class="create" style="font-size:14px !important; position: absolute; padding: 2px; left: 10px" action="list_admin">Admin Login</g:link>
	</div>
	<div class="input-group" id="inp1" style="z-index:1;padding: 0; top: 25px; left: 50%;transform: translate(-50%, -50%); position:absolute; width: 60%; min-width:220px;">
		<span class="input-group-btn" >
			<button class="btn btn-default expand" style="height: 35px !important;" type="button"><span class = "glyphicon glyphicon-search"></span></button>
		</span>
		<input type="text" class="form-control" id="filter" placeholder="Search" style="height: 35px !important;" onkeyup="return callfunction();">
	</div>


%{--------}%
	<div class="container" style="padding-top:50px;padding-left:10px;padding-right:10px;padding-bottom:-20px; -webkit-box-shadow: black">
		<div id="abcd" style="padding-top:0;padding-left:0;padding-right:0;padding-bottom:0;border:0;height: calc(100vh - 155px);overflow-y:auto">
			<div class="container">
				<div class="panel-group srch" id="accordion">
					<g:each in="${PhonebookList}" var="employee">
						<div id="nop">
							<table><tbody><tr>
								<td width="30%">
									<h4>
										<a  style="text-decoration:none; color: black; font-weight: bold; font-size: 15px;" href="#${employee.id}" data-toggle="tooltip" title="Click to see details">${employee.name}</a>
									</h4>
								</td>
								<td id="efg" width="30%">
									<a style=" color: darkblue !important; text-decoration: none" href="mailto:${employee.email}" data-toggle="tooltip" title="Click to email">${employee.email}</a>
								</td>
								<td width="30%">
									<a style=" color: darkblue !important; text-decoration: none" href="tel:${employee.phone}" data-toggle="tooltip" title="Click to call">${employee.phone}</a>
								</td>
								<td style="display:none">
									<h5>
										<a  style="text-decoration:none; color: black; font-weight: bold; font-size: 15px;" href="#${employee.designation}" data-toggle="tooltip" title="Click to see details">${employee.designation}</a>
									</h5>
								</td>
							</tr></tbody></table>
						</div>
					</g:each>
				</div>
			</div>
		</div>
	</div>
	<div style="width: 100%">
		%{--<g:link class="create" style="position: absolute; padding: 2px; left: 20px" action="list_admin">Admin</g:link>--}%
		%{--<g:link class="create" style="position: absolute; padding: 2px; left: 30%" action="list_old" target="_blank" onclick="win(this.href,950,550)">Old Phonebook</g:link>--}%
		<a style="font-size: 12px; text-decoration:none; color: black; font-style: italic; position: absolute; padding: 2px; right: 16px" href="#">&copy; qFlow</a>
	</div>

</body>
</html>