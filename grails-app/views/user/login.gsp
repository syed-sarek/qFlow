<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="mymain" />
	<asset:stylesheet src="material-kit.css"/>
	<asset:stylesheet src="icon.css"/>
	<asset:stylesheet src="metarial_icon.css"/>
	<asset:javascript src="material-kit.js"/>
	<asset:javascript src="material.min.js"/>
    <title>qFlow: Inventory & Sales Management System</title>
    <g:javascript library="jquery"/>
    <script>
        function showDiv() {
            document.getElementById('welcomeDiv').style.display = "block";
        }
        function hideDiv() {
            document.getElementById('byeDiv').style.display = "none";
        }
		function backDiv() {
            document.getElementById('byeDiv').style.display = "block";
            document.getElementById('welcomeDiv').style.display = "none";
        }
    </script>
</head>
<body>
<div style="background-position: center top; background-size: 100% 110%; background-image: url('${resource(dir: 'images/', file: 'login3.jpg')}') !important; height: 100vh; width: 100vw">
    <div class="container" >
				<div class="row" style="padding-top:80px" id="byeDiv">
					<div class="col-md-4 col-md-offset-4">
						<div class="card card-signup" >
							<g:form action="doLogin" method="post">
								<div class="header header-primary text-center">
									<p style="font-size: 20px !important;">qFlow</p>
									<div class="social-line">
										Inventory & Sales Management System
									</div>
								</div>
								<p class="text-divider">Log in to continue...</p>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">email</i>
										</span>
										<input type="text" class="form-control label-floating" required name='email' value='${user?.email}' placeholder="Email...">
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<input type="password" name='password' required value='${user?.password}' placeholder="Password..." class="form-control label-floating" />
									</div>

									<!-- If you want to add a checkbox to this form, uncomment this code

									<div class="checkbox">
										<label>
											<input type="checkbox" name="optionsCheckboxes" checked>
											Subscribe to newsletter
										</label>
									</div> -->
								<g:if test="${flash.error}">
									<div class="message"  style="display: block; color: red; font-size: 12px; margin-bottom:-12px ">${flash.error}</div>
								</g:if>
								<g:if test="${flash.success}">
									<div class="message"  style="display: block; color: green; font-size: 12px; margin-bottom:-12px ">${flash.success}</div>
								</g:if>
								</div>
								<br>
								<div style="position: inherit" class="text-center">
									<input class="btn btn-primary" type="submit" value="Login">
									&nbsp;&nbsp;&nbsp;<a role="button" name="answer" onclick="showDiv(); hideDiv()" style="text-decoration:none;">Change Password</a>
								</div>
								<br>
							</g:form>
						</div>
					</div>
				</div>
			
				<div class="row" id="welcomeDiv" style="padding-top:80px; display:none !important;">
					<div class="col-md-4 col-md-offset-4">
						<div class="card card-signup" >
							<g:form action='updatePassword' method="post">
								<div class="header header-primary text-center">
									<p style="font-size: 20px !important;">qFlow</p>
									<div class="social-line">
										Inventory & Sales Management System
									</div>
								</div>
								<p class="text-divider">Change Password</p>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">email</i>
										</span>
										<input type="text" class="form-control label-floating" required name='email' value='${user?.email}' placeholder="Email...">
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<input type="password" name='password_current' required placeholder="Current Password..." class="form-control label-floating" />
									</div>
									
									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<input type="password" name="passwordNew" required placeholder="New Password..." class="form-control label-floating" />
									</div>

									<!-- If you want to add a checkbox to this form, uncomment this code

									<div class="checkbox">
										<label>
											<input type="checkbox" name="optionsCheckboxes" checked>
											Subscribe to newsletter
										</label>
									</div> -->
									<g:if test="${flash.error}">
										<div class="message"  style="display: block; color: red; font-size: 12px; margin-bottom:-12px ">${flash.error}</div>
									</g:if>
									<g:if test="${flash.success}">
										<div class="message"  style="display: block; color: green; font-size: 12px; margin-bottom:-12px ">${flash.success}</div>
									</g:if>
								</div>
								<br>
								<div style="position: inherit" class="text-center">
									<input class="btn btn-primary" type="submit" value="Submit">
									&nbsp;&nbsp;&nbsp;<a role="button" name="answer" onclick="backDiv()" style="text-decoration:none;">Back</a>
								</div>
								<br>
							</g:form>
						</div>
					</div>
			</div>
		</div>
    <div class="navbar-fixed-bottom" align="center" role="contentinfo"><a style="text-decoration:none; font-size: 0.9em; color:black" href="https://i-swifter.com">© iSwifter</a>&nbsp;  &nbsp; </div>
</div>
</body>
</html>
