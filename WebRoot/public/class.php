
<?php
/*
  *mysql数据库类
	
*/
class VS_mysql{
public $servename;
public $username;
public $password;
public $dbname;
public $utf;

//MYSQL构造函数
function __construct($servename,$username,$password,$dbname){
	$this->servename=$servename;
	$this->username=$username;
	$this->password=$password;
	$this->dbname=$dbname;
	//$this->utf=$utf;

	
}
//数据库链接函数
function Connect(){
	$link=mysql_connect($this->servename,$this->username,$this->password) or die($this->err());
	mysql_select_db($this->dbname,$link) or die("没有该数据库：".$this->dbname);
	//mysql_query("SET NAMES '$this->utf'");
	
}


}

$db =  new VS_mysql("localhost","root","","voosky");
$db->Connect();
 
?>