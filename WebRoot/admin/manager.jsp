<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="./inc/taglibs.jsp" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>article category</title>
<link href="css/public.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>


<body>
<div id="vsWrap">
 	<%@ include file="./inc/header.jsp" %>
<!-- vsHead 结束 -->
	<%@ include file="./inc/left.jsp" %>
<!-- VSMENU 结束 -->
  <div id="vsMain">
   <div id="vsHere">VsPHP 管理中<b>></b><strong>系统设置</strong></div>
   <div id="manager" class="mainBox" style="{$workspace.height}">
    <h3><a href="" class="actionBtn">添加管理员</a>网站管理员</h3>
 
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
      <th width="30" align="center">编号</th>
      <th align="left">管理员名称</th>
      <th align="center">E-mail地址</th>
      <th align="center">添加时间</th>
      <th align="center">最后登录时间</th>
      <th align="center">操作</th>
     </tr>

     <tr>
      <td align="center">001</td>
      <td>admin</td>
      <td align="center">hexiunan@163.com</td>
      <td align="center">2015-11-07</td>
      <td align="center">2015-11-15 10:18:21</td>
      <td align="center"><a href="http://127.0.0.1/dhphp/admin/manager.php?rec=edit&id=1">编辑</a> | <a href="http://127.0.0.1/dhphp/admin/manager.php?rec=del&id=1">删除</a></td>
     </tr>

    </table>

    <form action="manager.php?rec=insert" method="post">
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="100" align="right">管理员名称</td>
       <td>
        <input type="text" name="user_name" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td width="100" align="right">E-mail地址</td>
       <td>
        <input type="text" name="email" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td align="right">密码</td>
       <td>
        <input type="password" name="password" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td align="right">确认密码</td>
       <td>
        <input type="password" name="password_confirm" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td></td>
       <td>
        <input type="submit" name="submit" class="btn" value="提交" />
       </td>
      </tr>
     </table>
    </form>

    <form action="manager.php?rec=update" method="post">
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
      <tr>
       <td width="100" align="right">管理员名称</td>
       <td>
        <input type="text" name="user_name" value="" size="40" class="inpMain" >
       </td>
      </tr>
      <tr>
       <td width="100" align="right">E-mail地址</td>
       <td>
        <input type="text" name="email" value="" size="40" class="inpMain" />
       </td>
      </tr>
    
      <tr>
       <td align="right">旧密码</td>
       <td>
        <input type="password" name="old_password" size="40" class="inpMain" />
       </td>
      </tr>
      <!-- {/if} -->
      <tr>
       <td align="right">新密码</td>
       <td>
        <input type="password" name="password" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td align="right">确认新密码</td>
       <td>
        <input type="password" name="password_confirm" size="40" class="inpMain" />
       </td>
      </tr>
      <tr>
       <td></td>
       <td>
    
        <input type="submit" name="submit" class="btn" value="提交" />
       </td>
      </tr>
     </table>
    </form>

    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
      <th width="30" align="center">编号</th>
      <th width="150" align="left">	操作时间</th>
      <th width="100" align="center">操作者</th>
      <th align="left">	操作记录</th>
      <th width="100" align="center">IP地址</th>
     </tr>
   
     <tr>
      <td align="center">001</td>
      <td>2015-11-15 15:50:10</td>
      <td align="center">admin</td>
      <td align="left">数据备份: D20151115T155002.sql</td>
      <td align="center">127.0.0.1</td>
     </tr>

    </table>
  
   </div>
  </div>
 <!-- VSMain 结束 -->
 <!-- footer 开始 -->
	<%@ include file="./inc/footer.jsp" %>
 <!-- footer 结束 -->
 </div>
</body>
</html>
