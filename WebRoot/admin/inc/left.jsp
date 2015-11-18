<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body>
<div id="vsLeft">
   <div id="menu">
     <ul class="top">
      <li><a href="${ctx}/admin/index.jsp"><i class="home"></i><em>管理首页</em></a></li>
     </ul>
     <ul>
      <li class="cur"><a href="${ctx}/admin/system.jsp"><i class="system"></i><em>系统设置</em></a></li>
      <li class="cur"><a href="${ctx}/admin/custom_nav.jsp"><i class="nav"></i><em>自定义导航</em></a></li>
        <li class="cur"><a href="${ctx}/admin/show.jsp"><i class="show"></i><em>幻灯片管理</em></a></li>
        <li class="cur"><a href="${ctx}/admin/singlepage.jsp"><i class="page"></i><em>单页面管理</em></a></li>
     </ul>
     <ul>
        <li class="cur"><a href="${ctx}/admin/product_category.jsp"><i class="productCat"></i><em>商品分类</em></a></li>
     
        <li class="cur"><a href="${ctx}/admin/product.jsp"><i class="product"></i><em>商品列表</em></a></li>
     
     </ul>
  
     <ul>
        <li class="cur"><a href="${ctx}/admin/article_category.jsp"><i class="articleCat"></i><em>文章分类</em></a></li>
        <li class="cur"><a href="${ctx}/admin/article.jsp"><i class="article"></i><em>文章列表</em></a></li>
     </ul>
 
     <ul>
        <li class="cur"><a href="${ctx}/admin/manager.jsp"><i class="manager"></i><em>网站管理员</em></a></li>
   
     </ul>
     <ul class="bot">
      <li class="cur"><a href="${ctx}/admin/backup.jsp"><i class="backup"></i><em>数据库备份</em></a></li>
      <li class="cur"><a href="${ctx}/admin/mobile.jsp"><i class="mobile"></i><em>手机版</em></a></li>
      <li class="cur"><a href="${ctx}/admin/theme.jsp"><i class="theme"></i><em>设置模板</em></a></li>
      <li class="cur"><a href="managerLog.html"><i class="managerLog"></i><em>操作记录</em></a></li>
     </ul>
  </div>
  </div>
  </body>