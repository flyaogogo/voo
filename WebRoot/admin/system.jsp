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
    <h3>系统设置</h3>
    <script type="text/javascript">
     {literal}
     $(function(){ $(".idTabs").idTabs(); });
     {/literal}
    </script>
    <div class="idTabs">
      <ul class="tab">
        <li><a href="#main">常规设置</a></li>
        <li><a href="#display">显示设置</a></li>
        <li><a href="#defined">自定义</a></li>
        <!-- {if $cfg_list_mail} -->
        <li><a href="#mail">邮件服务器</a></li>
       <!-- {/if} -->
      </ul>
      <div class="items">
       <form action="" method="post" enctype="multipart/form-data">
        <div id="main">
          <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
          	<tr>
              <th width="131">名称</th>
              <th>内容</th>
            </tr>
            <tr>
              <td>站点名称</td>
              <td>
                <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>站点标题</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>站点关键字</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>站点描述</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>站点标志</td>
              <td><input name="" type="file">&nbsp;</td>
            </tr>
            <tr>
              <td>公司地址</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>是否关闭网站</td>
              <td><input name="" type="radio" value="是">是<input name="" type="radio" value="否">否</td>
            </tr>
            <tr>
              <td>ICP备案证书号</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>客服电话</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>传真</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>客服QQ号码</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>邮件地址</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>系统语言</td>
              <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
            </tr>
            <tr>
              <td>URL 重写</td>
              <td><input name="" type="radio" value="是" checked>是<input name="" type="radio" value="否">否</td>
            </tr>
            <tr>
              <td>启用站点地图</td>
              <td><input name="" type="radio" value="是" checked>是<input name="" type="radio" value="否">否</td>
            </tr>
            <tr>
              <td>启用验证码</td>
              <td><input name="" type="radio" value="是" checked>是<input name="" type="radio" value="否">否</td>
            </tr>
            <tr>
              <td>留言板强制中文输入</td>
              <td><input name="" type="radio" value="是" checked>是<input name="" type="radio" value="否">否</td>
            </tr>
            <tr>
              <td>统计/客服代码调用</td>
              <td><textarea name="sitename" cols="80" rows="60" id="textfield" style="border:1px solid #CCC; height:80px; vertical-align:middle; color:#999;">VOOSKY轻量级企业网站管理系统</textarea></td>
            </tr>
          </table>
        </div>
        <div id="display">
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
         <tr>
           <th width="131">名称</th>
           <th>内容</th>
         </tr>
   
          <tr>
           <td align="right">缩略图宽度</td>
           <td>
            <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          
           </td>
          </tr>
        
         <tr>
          <td align="right">缩略图高度</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr>
         <tr>
          <td align="right">商品价格保留小数位数</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr>
         <tr>
          <td align="right">文章列表数量</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr>
         <tr>
          <td align="right">首页展示文章数量</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr><tr>
          <td align="right">商品列表数量</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr>
         <tr>
          <td align="right">首页展示商品数量</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
          </td>
         </tr>
         
        </table>
        </div>
        <div id="defined">
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
         <tr>
           <th width="131">名称</th>
           <th>内容</th>
         </tr>
       
          <tr>
           <td align="right"><table width="100%" border="0" cellpadding="8" cellspacing="0">
             <tbody>
               <tr>
                 <td align="right">文章自定义属性</td>
               </tr>
             </tbody>
           </table>
             <br></td>
           <td>
            <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
            
             <p class="cue">如"颜色,尺寸,型号"中间以英文逗号隔开</p>
           </td>
          </tr>
        
         <tr>
          <td align="right">商品自定义属性</td>
          <td>
           <input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;">
            <p class="cue">如"颜色,尺寸,型号"中间以英文逗号隔开</p>
      
          </td>
         </tr>
        
        </table>
        </div>
        <!-- {if $cfg_list_mail} -->
        <div id="mail">
        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
         <tr>
           <th width="131">名称</th>
           <th>内容</th>
         </tr>
        
         <tr>
          <td align="right">邮件服务</td>
          <td>
            <input type="radio" name="" id="" value="0" checked="true">
            系统内置Mail服务
            <input type="radio" name="" id="" value="1" checked="true">
             SMTP服务          
          </td>
         </tr>
         <tr>
           <td align="right">SMTP服务器</td>
           <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
         </tr>
         <tr>
           <td align="right">服务器端口</td>
           <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
         </tr>
         <tr>
           <td align="right">是否使用SSL安全协议</td>
           <td><input type="radio" name="" id="" value="0" checked="true"> 否
     <input type="radio" name="" id="" value="1" checked="true"> 是</td></tr>
          <tr>
           <td align="right">发件邮箱</td>
           <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
         </tr>
         <tr>
           <td align="right">发件邮箱密码</td>
           <td><input name="sitename" type="text" id="textfield" value="VOOSKY轻量级企业网站管理系统" size="80" maxlength="200"  style="border:1px solid #CCC; height:30px; vertical-align:middle; color:#999;"></td>
         </tr>
     
        </table>
        </div>

        <table width="100%" border="0" cellpadding="8" cellspacing="0" class="tableBasic">
         <tr>
          <td width="131"></td>
          <td>
         
           <input name="submit" class="btn" type="submit" value="提交" />
          </td>
         </tr>
        </table>
        </form>
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
