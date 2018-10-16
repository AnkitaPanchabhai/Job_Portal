<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<link rel="stylesheet" type="text/css" href="/resource/companyRegistration.css">
<body>
<script>
<meta name="viewport" content="width=device-width, initial-scale=1">
var modal = document.getElementById('studentLogin');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}


	var modal=document.getElementById('companyLogin');
	window.onclick=function(event){
		if(event.target==modal){
			modal.style.display="none";
		}
	}


	var model=document.getElementById('adminLogin');
	window.onclick=function(event){
		if(event.target==modal){
			modal.style.display="none";
		}
	}
</script>

<div class="major_container abc">
	<h2 style="text-align: center">Welcome to Job Portal Dashboard</h2>
	<hr width="80%">
	<h2 style="text-align: center">Student Login form</h2>
	<button onclick="document.getElementById('studentLogin').style.display='block'" style="width:100%;">Login</button>
	<h2 style="text-align: center;">Company Login Form</h2>
	<button onclick="document.getElementById('companyLogin').style.display='block'" style="width:100%;">Login</button>
	<h2 style="text-align: center">Admin Login</h2>
	<button onclick="document.getElementById('adminLogin').style.display='block'" style="width: 100%;">Login</button>
</div>
	
<div id="studentLogin" class="login_disp">
  
  <form class="modal-content animate" action="">
  

    <div class="container">
    	<h2 style="text-align: center;">Student Login</h2>
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="pwd"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit" class="submitBtn">Login</button>
      <button type="submit" class="registerbtn">Not Registered? Register now</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('studentLogin').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="pwd">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<div id="companyLogin" class="login_disp">
	<form class="modal-content animate" action="CompanySuccessPage" method="post">
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
<div id="adminLogin" class="login_disp">
	<form class="modal-content animate" action="" method="">

	<div class="container">
		<h2 style="text-align: center;">Administrator Login</h2>
		<label for="adminLog">Username</label>
		<input type="text" name="adminLog" placeholder="Enter your Username">
		<label for="adminPassword">Password</label>
		<input type="password" name="adminPassword" placeholder="Enter your password">
		<button type="submit" class="submitBtn">Login</button>
		<button type="button" class="registerbtn">Not Registered? Register Now..</button>
		<label>
			<input type="checkbox" checked="checked" name="remember">Remember Me
		</label>
	</div>
	<div class="container" style="background-color: #f1f1f1">
		<button type="button" onclick="document.getElementById('adminLogin').style.display='none'" class="cancelbtn"> Cancel</button>
		<span class="pwd"><a href="">Forgot Password?</a></span>

	</div>
</form>
</div>
</body>
</html>	
</body>
</html>
