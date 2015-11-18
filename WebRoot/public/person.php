<?php


class person{ 

var $name; 

var $sex; 

var $age; 

 
function __construct($name,$sex,$age){ 

$this->name=$name; 
 
$this->sex=$sex;  
$this->age="$age"; 
} 
//下面是人的成员方法 
function say() 
//这个人可以说话的方法 
{ 
echo "我的名字叫：".$this->name."性别；".$this->sex."我的年龄是：".$this->age."<br>"; 
} 

 
  

} 
//通过构造方法创建3个对象$p1,$p2,$p3，分别传入三个不同的实参为姓名性别和年龄 
$p1=new person("小明","男",20); 
$p1->say();
 


?>