<?php
session_start();
error_reporting(1);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Adminstrative AreaOnline Quiz </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<link href="set.css" rel="stylesheet" type="text/css">
</head>

<body>
<?php
include("header.php");
extract($_POST);
if(isset($submit))
{
	include("../student/database.php");
	$rs=mysql_query("select * from mst_admin where loginid='$loginid' and pass='$pass'",$cn) or die(mysql_error());
	if(mysql_num_rows($rs)<1)
	{
		echo "<BR><BR><BR><BR><div class=head1> Invalid User Name or Password<div>";
		exit;
		
	}
	$_SESSION['alogin']="true";
	
}
else if(!isset($_SESSION[alogin]))
{
	echo "<BR><BR><BR><BR><div class=head1> Your are not logged in<br> Please <a href=index.php>Login</a><div>";
		exit;
}
?>
<br/>
<h2><p class="head1" align="center"><span class="label label-success">Welcome to Admistrative Area</span> </p></h2><br>
<div id="set">
<div style="margin:auto;width:90%;height:500px;box-shadow:2px 1px 2px 2px #CCCCCC;text-align:left">
<div style="margin-left:20%;padding-top:5%">
	</br>
<button type="button" class="btn btn-default btn-lg"><a href="subadd.php">Add Subject</a></button>
	<h3><span class="label label-primary">You can add test and questions by adding a subject here!</span></h3>
	</br></br></br>
<button type="button" class="btn btn-default btn-lg"><a href="testadd.php">Add Exam</a></button>
	<h3><span class="label label-primary">You can add question by adding a test!</span></h3>
	</br></br></br>
<button type="button" class="btn btn-default btn-lg"><a href="questionadd.php">Add Question </a></button>
	<h3><span class="label label-primary">You can question here!</span></h3>
<p align="center" class="head1">&nbsp;</p>
</div>
</div>
</div>
</h1>
</body>
</html>
