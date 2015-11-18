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
   <div class="mainBox" style="{$workspace.height}">
    <h3><a href="" class="actionBtn">恢复数据</a>数据库备份</h3>
  
    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <form name="myform" method="post" action="">
      <tr>
       <th align="center">
        <input name='chkall' type='checkbox' id='chkall' onclick='selectcheckbox(this.form)' value='check' checked>
       </th>
       <th align="left">数据表名</th>
       <th align="center">类型</th>
       <th align="center">记录数</th>
       <th align="center">数据</th>
       <th align="center">索引</th>
       <th align="center">碎片</th>
      </tr>

      <tr>
       <td align="center"><input type=checkbox name=tables[] value={$tables.Name} checked></td>
       <td align="left">VS_admin</td>
       <td align="center">sql</td>
       <td align="center">21</td>
       <td align="center">123</td>
       <td align="center">12</td>
       <td align="center">1</td>
      </tr>
      <!-- {/foreach} -->
      <tr>
       <td colspan="7" align="right">数据库占用 118 KB</td>
      </tr>
      <tr>
       <td colspan="7" align="center">分卷备份设置</td>
      </tr>
      <tr>
       <td colspan="7" align="center">
        文件名：<input type="text" class="inpMain" name="file_name" value="" size=30>
        每个分卷文件大小：<input type="text" class="inpMain" name="vol_size" value="2048" size="5">K
       </td>
      </tr>
      <tr>
       <td height="26" colspan="7">
        <input type="hidden" name="token" value="{$token}" />
        <input type="hidden" name="totalsize" value="{$totalsize}">
        <input type="submit" name="submit" class="btn" value="确定备份"  onClick="">
       </td>
      </tr>
     </form>
    </table>

    <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
     <tr>
      <th width="" align="left">文件名</th>
      <th width="100">大小</th>
      <th width="160">备份日期</th>
      <th width="140">操作</th>
     </tr>
   
     <tr>
      <td align="left">VS20151115T155002.sql</td>
      <td align="center">1234</td>
      <td align="center">2015-11-15 15:50:10</td>
      <td align="center"><!-- {if $file.number le 1} --><a href="">导入</a> | <a href="l">下载</a> | <a href="">删除</a></td>
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
