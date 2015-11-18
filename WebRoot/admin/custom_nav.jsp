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
   <div class="mainBox" style="">
    <h3><a href="" class="actionBtn">添加导航</a>自定义导航栏</h3>
    <div class="navList">
     <ul class="tab">
      <li><a href="#" class="selected">主导航</a></li>
      <li><a href="#" class="selected">顶部</a></li>
      <li><a href="#" class="selected">底部</li>
     </ul>
     <table width="100%" border="0" cellpadding="10" cellspacing="0" class="tableBasic">
      <tr>
       <th width="113" align="center">导航名称</th>
       <th align="left">链接地址</th>
       <th width="80" align="center">排序</th>
       <th width="120" align="center">排序</th>
      </tr>

      <tr>
       <td>公司简介</td>
       <td>http://127.0.0.1/dhphp/page.php?id=1</td>
       <td align="center">10</td>
       <td align="center"><a href="nav.php?rec=edit&id={$nav_list.id}">编辑 | 删除</a><a href="nav.php?rec=del&id={$nav_list.id}"></a></td>
      </tr>
 
     </table>
    </div>

    <script type="text/javascript">
     {literal}
     $(function(){ $(".idTabs").idTabs(); });
     {/literal}
    </script>
    <div class="idTabs">
      <ul class="tab">
        <li><a href="#nav_add">添加站内导航</a></li>
        <li><a href="#nav_defined">添加自定义链接</a></li>
      </ul>
      <div class="items">
        <div id="nav_add">
         <form action="insert" method="post">
          <table width="100%" border="0" cellpadding="5" cellspacing="1" class="tableBasic">
           <tr>
            <td width="80" height="35" align="right">系统内容</td>
            <td>
             <select name="nav_menu" onchange="change('nav_name', this)">
              <option value="">请选择你链接的项目</option>
         
              <option value="企业简介" selected="selected" title="企业简介">企业简介</option>
           
             </select>
            </td>
           </tr>
           <tr>
            <td width="80" height="35" align="right">导航名称</td>
            <td>
             <input type="text" id="nav_name" name="nav_name" value="" size="40" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td height="35" align="right">位置</td>
            <td>
             <label for="type_0">
              <input type="radio" name="type" id="type_0" value="middle" checked="true" onChange="">
              主导航</label>
             <label for="type_1">
              <input type="radio" name="type" id="type_1" value="top" onChange="">
              顶部</label>
             <label for="type_2">
              <input type="radio" name="type" id="type_2" value="bottom" onChange="">
             底部</label>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">上级分类</td>
            <td id="parent">
             <select name="parent_id">
              <option value="0">无</option>
              <option value="{$list.id}">简介</option>
             </select>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">排序</td>
            <td>
             <input type="text" name="sort" value="50" size="5" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td></td>
            <td>
             <input type="hidden" name="token" value="{$token}" />
             <input name="submit" class="btn" type="submit" value="提交" />
            </td>
           </tr>
          </table>
         </form>
        </div>
        <div id="nav_defined">
         <form action="insert" method="post">
          <table width="100%" border="0" cellpadding="5" cellspacing="1" class="tableBasic">
           <tr>
            <td width="80" height="35" align="right">导航名称</td>
            <td>
             <input type="text" name="nav_name" value="" size="40" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td height="35" align="right">位置</td>
            <td>
             <label for="type_0">
 <input type="radio" name="type" id="type_0" value="middle" checked="true" onChange="">主导航
 </label>
<label for="type_1">
 <input type="radio" name="type" id="type_1" value="top" onChange="">顶部
</label>
<label for="type_2">
 <input type="radio" name="type" id="type_2" value="bottom" onChange="">底部
</label>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">链接地址</td>
            <td>
             <input type="text" name="guide" value="" size="80" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td height="35" align="right">上级分类</td>
            <td id="parent_external">
             <select name="parent_id">
              <option value="0">无</option>
             
              <option value="{$list.id}">简介</option>
             
             </select>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">排序</td>
            <td>
             <input type="text" name="sort" value="50" size="5" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td></td>
            <td>
           
             <input name="submit" class="btn" type="submit" value="提交" />
            </td>
           </tr>
          </table>
         </form>
        </div>
      </div>
    </div>

    <form action="update" method="post">
     <table width="100%" border="0" cellpadding="5" cellspacing="1" class="tableBasic">
           <tr>
            <td width="80" height="35" align="right">系统内容</td>
            <td>
             <select name="nav_menu" onchange="change('nav_name', this)">
              <option value="">请选择你链接的项目</option>
         
              <option value="企业简介" selected="selected" title="企业简介">企业简介</option>
           
             </select>
            </td>
           </tr>
           <tr>
            <td width="80" height="35" align="right">导航名称</td>
            <td>
             <input type="text" id="nav_name" name="nav_name" value="" size="40" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td height="35" align="right">位置</td>
            <td>
             <label for="type_0">
              <input type="radio" name="type" id="type_0" value="middle" checked="true" onChange="">
              主导航</label>
             <label for="type_1">
              <input type="radio" name="type" id="type_1" value="top" onChange="">
              顶部</label>
             <label for="type_2">
              <input type="radio" name="type" id="type_2" value="bottom" onChange="">
             底部</label>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">上级分类</td>
            <td id="parent">
             <select name="parent_id">
              <option value="0">无</option>
              <option value="{$list.id}">简介</option>
             </select>
            </td>
           </tr>
           <tr>
            <td height="35" align="right">排序</td>
            <td>
             <input type="text" name="sort" value="50" size="5" class="inpMain" />
            </td>
           </tr>
           <tr>
            <td></td>
            <td>
             <input type="hidden" name="token" value="{$token}" />
             <input name="submit" class="btn" type="submit" value="提交" />
            </td>
           </tr>
          </table>
    </form>
    <!-- {/if} -->
   </div>
  </div>
 <!-- VSMain 结束 -->
 <!-- footer 开始 -->
	<%@ include file="./inc/footer.jsp" %>
 <!-- footer 结束 -->
 </div>
</body>
</html>
