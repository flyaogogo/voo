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
   <div id="theme" class="mainBox" style="">
   <h3>设置模板</h3>
   <ul class="tab">
    <li><a href="" class="selected">管理模板</a></li>
    <li><a href=""class="selected"><span class="unum"><span>获取更多模板</span></span></a></li>
   </ul>
   <div class="enable">
    <h2>当前启用的模板</h2>
    <p><img src="{$theme_enable.image}" width="280" height="175"></p>
    <dl>
     <dt>VOOSKY Default</dt>
     <dd>版本：1.0</dd>
     <dd>作者：<a href="#" target="_blank">VS</a></dd>
     <dd>简介：介</dd>
    </dl>
   </div>
   <div class="themeList">
  
    <dl>
     <p><a href=""><img src="#" width="280" height="175"></a></p>
     <dt>蓝色商务公司模板 1.3</dt>
     <dd>作者：<a href="#" target="_blank">VS</a></dd>
     <dd class="btnList"><span><a href="#">购买</a> <a href="javascript:void(0)" onclick="">预览模板</a></span></dd>
    </dl>
   </div>
   </div>
  </div>
 <!-- VSMain 结束 -->
 <!-- footer 开始 -->
	<%@ include file="./inc/footer.jsp" %>
 <!-- footer 结束 -->
 </div>
</body>
</html>
