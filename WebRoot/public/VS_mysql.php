
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
public $con;
public $result;
public $rows;

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
	$this->con=mysql_connect($this->servename,$this->username,$this->password) or die($this->err());
	mysql_select_db($this->dbname,$this->con) or die("没有该数据库：".$this->dbname);
	//mysql_query("SET NAMES '$this->utf'");
	
}
//数据表查询函数
function table($table){
	$this->table;

	}
function Select($table){
	$this->result = mysql_query("SELECT * FROM '$this->table'");
	

}

function close(){
        if ($this->con && !mysql_close($this->con)){
            throw new Exception($this->error());
        }
        $this->con = 0;
        $this->query_count = 0;
}


}

$db =  new VS_mysql("localhost","root","","voosky");
$db->Connect();
print "{$db->Select('vs_user')}";






 
?>