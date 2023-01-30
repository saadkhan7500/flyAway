<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1; width: 50%; margin-left:25%;margin-top: 10%;}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>



<form action="ResetPasswordImpl.jsp" method="post"; onsubmit="return validate();">
  

  <div class="container">
     <h2 style="text-align:center;">Password Reset</h2>
    <label for="uname"><b>Password</b></label>
    <input type="text" placeholder="Enter Password" name="psw1" id="firstpsw" required>

    <label for="psw"><b>Confirm Password</b></label>
    <input type="text" placeholder="Confirm Password" name="psw2" id="secondpsw" required>
        <span style="color:red;" id="msg"></span>
    <button type="submit">Submit</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> 
          </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
   <a href="AdminDashboard.jsp"> <button type="button" class="cancelbtn" onsubmit="">Cancel</button></a>
  </div>
</form>

</body>
<script type="text/javascript">

function validate()
{
	var psw1 = document.getElementById("firstpsw").value;
	var psw2 = document.getElementById("secondpsw").value;
	
	if(psw1!=psw2)
		{
		document.getElementById("msg").innerHTML = "Passwords are not same";
		return false;
		
		}
	else
		{
		return true;
		}
	
	}

</script>
</html>
