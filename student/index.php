<?php
session_start();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Wel come to Online Exam</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <link rel="stylesheet" href="dsgn.css" type="text/css">
</head>

<body>
<?php
include("header.php");
include("database.php");
extract($_POST);

if(isset($submit))
{
	$rs=mysql_query("select * from mst_user where login='$loginid' and pass='$pass'");
	if(mysql_num_rows($rs)<1)
	{
		$found="N";
	}
	else
	{
		$_SESSION[login]=$loginid;
	}
}
if (isset($_SESSION[login]))
{
echo "<h1 class='style8' align=center>Welcome to Online Exam</h1>";
		echo '<t width="40%"  border="0" align="center">
</br></br></br></br>
  <tr> 
    <td valign="bottom" bordercolor="#000000" colspan="2" align="center"> <h1><a href="sublist.php" class="style4"><span class="label label-primary">Subject for Quiz </span></a></h1></td>
  </tr>
  </br></br></br>
  <tr></tr>
  <tr>
    <td valign="bottom" colspan="2" align="center"><h1><a href="result.php" class="style4"><span class="label label-danger">Result</span></a></h1></td>
  </tr>
</table>';
   
		exit;
		

}


?>
<div id="log">
<form name="form1" method="post" action="">
    <div id="tb">
      <table border="0">
          <tr>
              <td colspan="2"><h3 align="center">Student Login!</h3></td>
          </tr>
        <tr>
          <td><span>Login ID </span></td>
          <td><input name="loginid" type="text" id="loginid2" class="form-control"></td>
        </tr>
        <tr>
          <td><span>Password</span></td>
          <td><input name="pass" type="password" id="pass2" class="form-control"></td>
        </tr>
        <tr>
          <td colspan="2"><span>
            <?php
		  if(isset($found))
		  {
		  	echo "Invalid Username or Password";
		  }
		  ?>
          </span></td>
          </tr>
        <tr>
          <td colspan=2 align=center>
		  <input name="submit" type="submit" id="submit" value="Login" class="btn btn-primary">		  </td>
        </tr>
        <tr>
          <td colspan="2"><div align="center"><span class="style4">New User ? <a href="signup.php">Signup Free</a></span></div></td>
          </tr>
      </table>
        </div>
    </form>
</div>
</body>
</html>
