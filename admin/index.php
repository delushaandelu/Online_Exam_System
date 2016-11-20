<?php
session_start()
?>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Administrative Login - Online Exam</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="admind" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>
<?php
?>
<form name="form1" method="post" action="login.php">
<div id="adminlog">
  <div id="frm">
<table width="300" border="0">
  <tr>
    <td><h4 align="center">Adminstrative Login</h4></br></td>
  </tr>
  <tr>
    <td width="40%"><input name="loginid" type="text" id="loginid" class="form-control" placeholder="Enter username"></br></td>
  </tr>
  <tr>
    <td><input name="pass" type="password" id="pass" class="form-control" placeholder="Enter password" align="center"></br></td>
  </tr>
  <tr>
    <td align="center"><input name="submit" type="submit" id="submit" value="Login" class="btn btn-primary"></td>
  </tr>
  <tr>
    <td align="center"></br></td>
  </tr>
</table>
</form>
  </div>
</div> 

</body>
</html>
