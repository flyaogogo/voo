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
   <div id="mobileBox">
   <div id="mMenu">
    <h3>手机版</h3>
    <ul>
     <li><a href="" class="cur">手机版系统设置</a></li>
     <li><a href="" class="cur">手机版导航</a></li>
     <li><a href="" class="cur">手机版幻灯</a></li>
     <li><a href="" class="cur">手机版模板</a></li>
    </ul>
   </div>
   <div id="mMain">
    <div class="mainBox" style="{$workspace.height}">
     <!-- 手机版设置 开始 -->
     <h3>手机版系统设置</h3>
     <div class="system">
      <form action="" method="post" enctype="multipart/form-data">
       <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
        <tr>
         <th width="141">名称</th>
         <th>内容</th>
        </tr>
    
         <tr>
          <td align="right">手机版站名</td>
          <td>
           <input type="text" name="" value="" size="80" class="inpMain" />
          </td>
         </tr>
         <tr>
           <td align="right">手机版标题</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">手机版关键字</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">手机版描述</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">手机版标志</td>
           <td><input type="file" name="" size="18" /></td>
         </tr>
         <tr>
           <td align="right">是否关闭手机版</td>
           <td> <input type="radio" name="" id="" value="1" checked="true">
             否<input type="radio" name="" id="" value="1" checked="true">是</td>
         </tr>
         <tr>
           <td align="right">文章列表数量</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">首页展示文章数量</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">商品列表数量</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
         <tr>
           <td align="right">首页展示商品数量</td>
           <td><input type="text" name="" value="" size="80" class="inpMain" /></td>
         </tr>
     
        <tr>
         <td width="141"></td>
         <td>
     
          <input name="submit" class="btn" type="submit" value="提交" />
         </td>
        </tr>
       </table>
      </form>
     </div>

     <!-- 手机版导航 开始 -->
     <h3><a href="" class="actionBtn">添加导航</a>手机版导航</h3>
      <table width="100%" border="0" cellpadding="10" cellspacing="0" class="tableBasic">
       <tr>
        <th width="113" align="center">导航名称作</th>
        <th align="left">链接地址</th>
        <th width="80" align="center">排序</th>
        <th width="120" align="center">操作</th>
       </tr>
  
       <tr>
        <td>公司简介</td>
        <td>http://127.0.0.1/dhphp/page.php?id=1</td>
        <td align="center">1</td>
        <td align="center"><a href="http://127.0.0.1/dhphp/admin/mobile.php?rec=nav&act=edit&id=25">编辑</a> | <a href="http://127.0.0.1/dhphp/admin/mobile.php?rec=nav&act=del&id=25">删除</a></td>
       </tr>
       <!-- {/foreach} -->
      </table>
      <!-- {/if} -->
      <!-- {if $act eq 'add'} 导航添加 -->
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
           <form action="" method="post">
            <table width="100%" border="0" cellpadding="5" cellspacing="1" class="tableBasic">
             <tr>
              <td width="80" height="35" align="right">系统内容</td>
              <td>
               <select name="nav_menu" onchange="change('nav_name', this)">
                <option value="">无</option>
       
                <option value="" title="">简介</option>
                
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
          <div id="nav_defined">
           <form action="mobile.php?rec=nav&act=insert" method="post">
            <table width="100%" border="0" cellpadding="5" cellspacing="1" class="tableBasic">
             <tr>
              <td width="80" height="35" align="right">导航名称</td>
              <td>
               <input type="text" name="nav_name" value="" size="40" class="inpMain" />
              </td>
             </tr>
             <tr>
              <td height="35" align="right">链接地址</td>
              <td>
               <input type="text" name="guide" value="" size="80" class="inpMain" />
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

      <!-- 导航编辑 -->
      <form action="mobile.php?rec=nav&act=update" method="post">
       <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
        <tr>
         <th colspan="2">&nbsp;</th>
        </tr>
 
        <tr>
         <td width="80" height="35" align="right">系统内容</td>
         <td>
          <select name="nav_menu" onchange="change('nav_name', this)">
           <option value="">无</option>
          
           <option value="" selected="selected" title="{$catalog.name}"></option>
      
          </select>
         </td>
        </tr>

        <tr>
         <td width="80" height="35" align="right">导航名称</td>
         <td>
          <input type="text" id="nav_name" name="nav_name" value="{$nav_info.nav_name}" size="40" class="inpMain" />
         </td>
        </tr>
       <tr>
         <td height="35" align="right">链接地址</td>
         <td> 
          <input type="text" name="guide" value="" size="60" class="inpMain" />
           <strong>* 系统链接，不可编辑</strong>
         </td>
        </tr>
        <tr>
         <td height="35" align="right">排序</td>
         <td>
          <input type="text" name="sort" value="" size="5" class="inpMain" />
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

     <!-- 手机版幻灯 开始 -->
     <h3>手机版幻灯</h3>
     <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic imgModule">
      <tr>
       <th>添加幻灯</th>
       <th>幻灯列表</th>
      </tr>
      <tr>
       <td width="350" valign="top"><form action="" class="formEdit" method="post" enctype="multipart/form-data">
         <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableOnebor">
          <tr>
           <td><strong>幻灯名称</strong><input type="text" name="show_name" value="" size="20" class="inpMain" /></td>
          </tr>
          <tr>
           <td><strong>幻灯图片</strong>
             <input type="file" name="show_img" class="inpFlie" />
            <a href="" target="_blank"><img src="images/icon_yes.png"></a> </td>
          </tr>
          <tr>
           <td><strong>链接地址</strong>
           <input type="text" name="show_link" value="
           " size="40" class="inpMain" /></td>
          </tr>
          <tr>
           <td><strong>排序</strong><input type="text" name="sort" value="" size="20" class="inpMain" /></td>
          </tr>
          <tr>
           <td>
            <input name="submit" class="btn" type="submit" value="提交" /></td>
          </tr>
         </table>
        </form></td>
       <td valign="top"><table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableOnebor">
         <tr>
          <td width="100">幻灯名称</td>
          <td></td>
          <td width="50" align="center">排序</td>
          <td width="80" align="center">操作</td>
         </tr>
        
         <tr>
         <td><a href="{$show_list.show_img}" target="_blank"><img src="{$show_list.thumb}" width="100" /></a></td>
          <td>手机版广告图片01</td>
          <td align="center">10</td>
          <td align="center"><a href="">编辑</a> | <a href="">删除</a></td>
         </tr>

        </table></td>
      </tr>
     </table>

     <!-- 手机版模板 开始 -->
     <div id="theme">
      <h3>手机版模板</h3>
      <ul class="tab">
       <li><a href="" class="selected">管理模板</a></li>
       <li><a href="" class="selected"><span>获取更多模板</span></span>{/if}</a></li>
      </ul>
    
      <div class="enable">
       <h2>当前使用模板</h2>
       <p><img src="" width="170" height="230"></p>
       <dl>
        <dt>企业版</dt>
        <dd>版本：vs 1.0</dd>
        <dd>作者：<a href="" target="_blank">VS</a></dd>
        <dd>简介：简介</dd>
       </dl>
      </div>
      <div class="themeList">
       <dl class="mobile">
        <p><a href=""><img src="" width="170" height="230"></a></p>
          <dt>企业版</dt>
        <dd>作者：<a href="" target="_blank">VS</a></dd>
        <dd>费用 ：简介</dd>
        <dd class="btnList"><span><a href="">购买</a> <a href="" onclick="">模板预览</a></span></dd>
       </dl>
       
      </div>
    
  
     </div>
     <!-- 手机版模板 结束 --> 
    </div>
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
