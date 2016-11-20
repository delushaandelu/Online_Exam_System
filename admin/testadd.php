<?php
session_start();
error_reporting(1);
if (!isset($_SESSION['alogin']))
{
	echo "<br><h2>You are not Logged On Please Login to Access this Page</h2>";
	echo "<a href=index.php><h3 align=center>Click Here for Login</h3></a>";
	exit();
}
?>
<link href="set.css" rel="stylesheet" type="text/css">
<?php
require("../student/database.php");

include("header.php");


echo "<br><h2 align='center'><div class=head1><span class=\"label label-success\">Add Test</span></div></h2></br></br>";
if($_POST[submit]=='Save' || strlen($_POST['subid'])>0 )
{
extract($_POST);
mysql_query("insert into mst_test(sub_id,test_name,total_que) values ('$subid','$testname','$totque')",$cn) or die(mysql_error());
echo "<p align=center>Test <b>\"$testname\"</b> Added Successfully.</p>";
unset($_POST);
}
?>
<SCRIPT LANGUAGE="JavaScript">
function check() {
mt=document.form1.testname.value;
if (mt.length<1) {
alert("Please Enter Test Name");
document.form1.testname.focus();
return false;
}
tt=document.form1.totque.value;
if(tt.length<1) {
alert("Please Enter Total Question");
document.form1.totque.value;
return false;
}
return true;
}
</script>
<br>


<form name="form1" method="post" onSubmit="return check();">
  <table width="58%"  border="0" align="center"><br><br>
    <tr>
      <td width="49%" height="32"><div align="left"><strong>Enter Subject ID </strong></div></td>
      <td width="3%" height="5">  
      <td width="48%" height="32"><select name="subid" >
<?php
$rs=mysql_query("Select * from mst_subject order by  sub_name",$cn);
	  while($row=mysql_fetch_array($rs))
{
if($row[0]==$subid)
{
echo "<option value='$row[0]' selected>$row[1]</option><br><br>";
}
else
{
echo "<option value='$row[0]'>$row[1]</option><br><br>";
}
}
?>
      </select>

    <tr>
        <td height="26"><div align="left"><strong> Enter Test Name </strong></div></td>
        <td>&nbsp;</td>
	  <td><input name="testname" type="text" id="testname" class="form-control"></td>
    </tr>
  <tr>
     <td> <br>
      <br></td>
  </tr>
    <tr>
      <td height="26"><div align="left"><strong>Enter Total Question </strong></div></td>
      <td>&nbsp;</td>
      <td><input name="totque" type="text" id="totque" class="form-control"></td>
    </tr>
      <tr>
          <td></br></td>
      </tr>
    <tr>
      <td height="26"></td>
      <td>&nbsp;</td>s
      <td><input type="submit" name="submit" value="Add" class="btn btn-primary" ></td>
    </tr>
  </table>
</form>
<p>&nbsp; </p>
