<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script type="text/javascript">
function validatePassword()
{
    if(document.frm.pwd.value==document.frm.cpwd.value)
    {
      return true;
    }
    else
    {
      alert("Password and confirm password should match");
      
      return false;
    }
}
</script>
<link rel="stylesheet" type="text/css" href="companyRegistration.css">
<body>
<form name="frm" action="registrationSuccess" onsubmit="return validatePassword()"></form>
<script>
	var modal=document.getElementById('companyRegistration');
	window.onclick=function(event){
		if(event.target==modal){
			modal.style.display="none";

		}
	}

</script>
<div class="major_container">
	<h2 align="center">Register Now..</h2>
	<button onclick="document.getElementById('companyRegistration').style.display='block'" style="width: 100%;">Login Now</button>
</div>
	<div id="companyRegistration" class="registrationDisplay">
		<form class="modal-content animate">
			<div class="container">
				<h2 align="center">Registration details</h2>
				<label for="cname"><br>Username</br></label>
				<input type="text" name="cname" placeholder="Enter your username" required>
				<label for="pwd"><br>Password</br></label>
				<input type="password" name="pwd" placeholder="Enter your password"required>
				<label>Confirm Password<br></label>
				<input type="password" name="cpwd" placeholder="Confirm your password"required>
				<label>Name of the company<br></label>
				<input type="text" name="cname" placeholder="Enter Company Name"required>
				<label for="companyDescription">Company Description<br></label>
				<input type="text" name="companyDescription" required>
				<label><h3 align="center">Local Address</h3><br>
					<!-- <h3 align="center">Local address</h3> -->
					<table style="width: 100%;">
						<tr><td>Door No</td><td>Street Name</td></tr>
						<tr><td><input type="number" name="doorNo" placeholder="Enter your Door no here">
					</td><td><input type="text" name="streetName" placeholder="Street name here"></td></tr>
					<tr><td>State</td><td>City</td></tr>
					<tr><td><input type="text" name="state" placeholder="state"required></td><td><input type="text" name="city" placeholder="city" required></td></tr>
                    </table>
					<label for="country">Country</label>
					<input type="text" name="country" placeholder="country" required>
					
				</label>
				<label for="permanenentadd">Same as permanent address</label>
				<input type="checkbox"checked="checked" name="permanenentadd">
				<label><h3 align="center">Permanent Address</h3></label>
				<table style="width: 100%;">
						<tr><td>Door No</td><td>Street Name</td></tr>
						<tr><td><input type="number" name="doorNo" placeholder="Enter your Door no here">
					</td><td><input type="text" name="streetName" placeholder="Street name here"></td></tr>
					<tr><td>State</td><td>City</td></tr>
					<tr><td><input type="text" name="state" placeholder="state"></td><td><input type="text" name="city" placeholder="city"></td></tr>
					</table>
					<label for="country">Country</label>
					<input type="text" name="country" placeholder="country" required>
				<label><h3 align="center">Job Profile</h3>
					<label for="jobLocation">Job Location</label>
					<input type="text" name="jobLocation" placeholder="Job Location"required>
					<label for="Criteria">Criteria</label>
					<select>
						<option>Above 60%</option>
						<option>Above 70%</option>
						<option>Above 80%</option>
						<option>Above 90%</option>
					</select>
					<label for="package">Package(in Lakhs)</label>
					<input type="number" name="package" placeholder="Package offered" required>
					<label for="interview">Interview Process</label>
					<input type="text" name="interview" placeholder="Interview Process">

				</label>
				<button type="submit" class="submitbtn"name="Submit" value="Submit">Process Details</button>

			</div> 
			<div class="container" style="background-color: #f1f1f1">
				<button onclick="document.getElementById('companyRegistration').modal.style.display='none'" class="cancelbtn" type="submit">Cancel</button>
		
			</div>
		</form>
	</div>

</body>
</html>