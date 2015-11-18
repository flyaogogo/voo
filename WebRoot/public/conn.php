<?php

$localhost="localhost";
$dbuser="";
$dbpass="";
$dbname="dedecmsv57utf8sp1";

$con = mysql_connect("localhost", "root", "");

$db_selected = mysql_select_db($dbname, $con);

if (!$db_selected)
  {
  die ("Can\'t use: " . mysql_error());
  }else{
	echo "数据库链接成功";  
  }

mysql_close($con);


?>