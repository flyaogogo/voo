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
<title>voosky-manager</title>
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
   <div id="index" class="mainBox" style="padding-top:18px;{$workspace.height}">
        <div class="warning">当网站有问题在此提醒：您不小心删除HTJML 文件夹，出于安全的考虑，请及时找备份文件。</div>
        <div class="indexBox">
          <div class="boxTitle">单页面快速管理</div>
          <ul class="ipage">
           <a href="">公司简</a><a href="">介企业荣誉</a><a href="">发展历程</a><a href="">联系我们</a><a href="">人才招聘</a><a href="">营销网络
</a> 
           <div class="clear"></div>
          </ul>
        </div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
           <td width="65%" valign="top" class="pr">
            <div class="indexBox">
             <div class="boxTitle">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                 <tbody>
                   <tr>
                     <td width="65%" valign="top"><div>
                       <div>网站基本信息</div>
                     </div></td>
                   </tr>
                 </tbody>
               </table>
             </div>
             <ul>
              <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
               <tr>
                <td width="120">单页面数：</td>
                <td><strong>6</strong></td>
                <td width="100">文章总数：</td>
                <td><strong>10</strong></td>
               </tr>
               <tr>
                <td>商品总数：</td>
                <td><strong>15</strong></td>
                <td>系统语言：</td>
                <td><strong>zh_cn</strong></td>
               </tr>
               <tr>
                <td>URL 重写：</td>
                <td><strong><!-- {if $site.rewrite} -->关闭<a href="system.php" class="cueRed ml">（点击开启</a> 
                 <!-- {/if} -->）</strong></td>
                <td>编码：</td>
                <td><strong>UTF-8</strong></td>
               </tr>
               <tr>
                <td>站点地图：</td>
                <td><strong><!-- {if $site.sitemap} -->开启<!-- {/if} --></strong></td>
                <td>站点模板：</td>
                <td><strong>default</strong></td>
               </tr>
               <tr>
                <td>vsPHP版本：</td>
                <td><strong>v1.3 Release 20151102</strong></td>
                <td>安装日期：</td>
                <td><strong>2015-11-07</strong></td>
               </tr>
            </table>
           </ul>
          </div>
         </td>
         <td valign="top" class="pl">
          <div class="indexBox">
           <div class="boxTitle">管理员 登录记录</div>
           <ul>
            <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
             <tr>
              <th width="45%">IP地址</th>
              <th width="55%">操作时间</th>
             </tr>
             <!-- {foreach from=$log_list item=log_list} -->
             <tr>
              <td align="center">127.0.0.1</td>
              <td align="center">2015-11-15 10:18:21</td>
             </tr>
             <!-- {/foreach} -->
            </table>
           </ul>
          </div>
         </td>
        </tr>
   </table>
   <div class="indexBox">
    <div class="boxTitle">服务器信息</div>
    <ul>
     <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
      <tr>
       <td width="120" valign="top">PHP 版本：</td>
       <td valign="top">5.3.10 </td>
       <td width="100" valign="top">MySQL 版本：</td>
       <td valign="top">5.5.20-log</td>
       <td width="100" valign="top">服务器操作系统：</td>
       <td valign="top">WINNT(127.0.0.1)</td>
      </tr>
      <tr>
       <td valign="top">文件上传限制：</td>
       <td valign="top">2M</td>
       <td valign="top">GD 库支持：</td>
       <td valign="top">是</td>
       <td valign="top">Web 服务器：</td>
       <td valign="top">Apache/2.2.21 (Win32) PHP/5.3.10</td>
      </tr>
     </table>
    </ul>
   </div>   
   <div class="indexBox">
    <div class="boxTitle">系统开发</div>
    <ul>
     <table width="100%" border="0" cellspacing="0" cellpadding="7" class="tableBasic">
      <tr>
       <td width="120">Voosky官网：</td>
       <td><a href="http://www.voosky.com" target="_blank">http://www.voosky.com</a></td>
      </tr>
      <tr>
       <td>开发者社区：</td>
       <td><a href="http://bbs.voosky.cn/" target="_blank">http://bbs.voosky.cn </a><em>（安装使用 模板交流 BUG反馈 意见建议）</em></td>
      </tr>
      <tr>
       <td>贡献者：</td>
       <td>Wooyun.org, Pany, Tea</td>
      </tr>
      <tr>
       <td>系统使用协议：</td>
       <td><a href="http://www.voosky.com/license.html" target="_blank">http://www.voosky.com/license.html</a><em>（您可以免费使用DouPHP（不限商用），但必须保留相关版权信息。）</em></td>
      </tr>
     </table>
    </ul>
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
