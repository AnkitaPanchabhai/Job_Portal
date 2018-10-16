<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="/resource/companyRegistration.css">
<body>
<div id="companyLogin" class="login_disp">
	<form class="modal-content animate" action="CompanyLoginSuccessPage" method="post">
		<div class="container">
			<h2 style="text-align: center">Company Login </h2>
	      <label for="cuname"><b style="text-align: center;">Company Username</b></label>
	      <input type="text" placeholder="Enter Username" name="cuname" required>

	      <label for="pwd"><b>Password</b></label>
	      <input type="password" placeholder="Enter Password" name="psw" required>
	        
	      <button type="submit" class="submitBtn">Login</button>
	      <button type="button" class="registerbtn"><a href="CompanyRegistration">Register now</a></button>
	      <label>
	        <input type="checkbox" checked="checked" name="remember"> Remember me
	      </label>
	    </div>
	    <div class="container" style="background-color: #f1f1f1;">
	    	<button type="button" onclick="document.getElementById('companyLogin').style.display='none'" class="cancelbtn" >Cancel</button>
	    	<span class="pwd">Forgot Password <a href="ForgotPassword"> Password</a></span>
	    </div>
	</form>
</div>
</body>
</html>