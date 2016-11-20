<head>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
}
-->
</style>

<table border="0" width="100%" cellspacing="0" cellpadding="0" bgcolor="#000000" background="img/blackbar.jpg">
  </Table>
  <Table width="100%">
  <tr>
  <td>
  <?php @$_SESSION['login']; 
  error_reporting(1);
  ?>
  </td>
    <td>
	<?php
	if(isset($_SESSION['login']))
	{
	 echo "<nav class=\"navbar navbar-inverse\">
	<div class=\"container-fluid\">
		<ul class=\"nav navbar-nav\">
			<li class=\"active\"><a href=\"#\">Welcome to Online Exam!</a></li>
			<li><a href=\"#\"> <span class=\"caret\"></span></a>
			</li>
			<li><a href=\"#\"></a></li>
		</ul>
		<ul class=\"nav navbar-nav navbar-right\">
			<li><a href=\"index.php\"><span class=\"glyphicon glyphicon-user\"></span>Home</a></li>
			<li><a href=\"signout.php\"><span class=\"glyphicon glyphicon-log-in\"></span> Signout</a></li>
		</ul>
	</div>
</nav>";
	 }
	 else
	 {
	 	echo "&nbsp;";
	 }
	?>
	</td>
	
  </tr>
  
</table>
