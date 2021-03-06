<!DOCTYPE html>
<html>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>QAII智慧管理平台</title>
  <link rel="shortcut icon" type="image/x-icon" href="${basePath}/image/icon.ico" media="screen" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/layui.css">
  <link rel="stylesheet" href="${basePath}/commen/layui/css/style.css">
  <link rel="stylesheet" href="${basePath}/css/science.css">
  <script src="${basePath}/js/jquery-3.3.1.min.js"></script>
    <style>
        #messagenum{
            background: #f5343d;
            color:#fff;
            font-size:10px;
            width:20px;
            height:20px;
            border-radius:50%;
            line-height:20px;
            display: inline-block;
            text-align: center;
            margin-left:5px;
        }
    </style>
<!--  iframe样式设置-->
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
<!-- 头部区域（可配合layui已有的水平导航） -->
  <div class="layui-header">
	  <div class="layui-logo"><img src="${basePath}/image/qaii.png" style="margin-right: 20px;"></img>智慧科技管理系统</div>
		<ul class="layui-nav layui-layout-right">
		  <li class="layui-nav-item">
			  <a href="outLogin.do" "event.returnValue=false">
			  <!-- <a id="replacep"> -->
			  
				  <img src="${basePath}/image/close.png" class="layui-nav-img">
				  退出系统
			  </a>
		  </li>
		   <li class="layui-nav-item">
			<a href="javascript:;">
			  <img src="https://t.cn/RCzsdCq" class="layui-nav-img">
                ${ sessionScope.name}
			</a>
			<dl class="layui-nav-child">
              <dd><a onclick="iframechange('changePassword.do')" event.returnValue=false style="color:#333 !important;"> 修改密码</a></dd>
			  <dd><a href="">基本资料</a></dd>
			  <dd><a href="">安全设置</a></dd>
			</dl>
		  </li>

		</ul>
  </div>
  <!-- 头部区域（可配合layui已有的水平导航） -->
  
   <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <ul class="layui-nav layui-nav-tree"  lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
			<a class="" href="indexScience.do"><i class="layui-icon layui-icon-website" style="font-size: 22px;"></i>&nbsp;全局总览</a>
        </li>
        <li class="layui-nav-item layui-this">
          <a href="javascript:;" onclick="iframechange('patent.do')"><i class="layui-icon layui-icon-star" style="font-size: 22px;"></i>&nbsp;专利</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;" onclick="iframechange('soft.do')"><i class="layui-icon layui-icon-read" style="font-size: 22px;"></i>&nbsp;软著</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;" onclick="iframechange('brand.do')"><i class="layui-icon layui-icon-note" style="font-size: 22px;"></i>&nbsp;商标</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;" onclick="iframechange('copyright.do')"><i class="layui-icon layui-icon-auz" style="font-size: 22px;"></i>&nbsp;版权</a>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;"><i class="layui-icon layui-icon-senior" style="font-size: 22px;"></i>&nbsp;政府资助</a>
          <dl class="layui-nav-child">
	          <dd class="navdd"><a onclick="iframechange('research.do')">纵向课题</a></dd>
	          <dd class="navdd"><a onclick="iframechange('create.do')">平台建设</a></dd>
	          <dd class="navdd"><a onclick="iframechange('fund.do')">基金管理</a></dd>
	          <dd class="navdd"><a onclick="iframechange('award.do')">政府奖励</a></dd>
	      </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;"><i class="layui-icon layui-icon-form" style="font-size: 22px;"></i>&nbsp;论文</a>
          <dl class="layui-nav-child">
	          <dd class="navdd"><a onclick="iframechange('paper.do')">期刊论文</a></dd>
	          <dd class="navdd"><a onclick="iframechange('papermeeting.do')">会议论文</a></dd>
	      </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;" onclick="iframechange('work.do')"><i class="layui-icon layui-icon-diamond" style="font-size: 22px;"></i>&nbsp;著作</a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;" onclick="iframechange('systemScience.do')"><i class="layui-icon layui-icon-app" style="font-size: 22px;"></i>&nbsp;单位设置</a>
        </li>
       	<li class="layui-nav-item">
          <a href="javascript:;" onclick="iframechange('newsScience.do')" id="newsnull"><i class="layui-icon layui-icon-reply-fill" style="font-size: 22px;"></i>
              &nbsp;消息管理
          </a>
        </li>
      </ul>
    </div>
  </div>
   <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
   
  <!--  主要数据表格-->
  <div class="layui-body" id="layuiBody">
	  <iframe src="patent.do" id="iframe"></iframe>
  </div>
  <!--  主要数据表格-->
  
   <!-- 底部固定区域 -->
  <div class="layui-footer">
   
    © 青岛智能产业研究院&nbsp;版权所有
  </div>
   <!-- 底部固定区域 -->
</div>
<script type="text/javascript">
	$("#replacep").click(function(){
		window.location.replace('outLogin.do');
		window.history.back(-1);
	})
</script>
<script src="${basePath}/commen/layui/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element; 
});
function iframechange(obj){
	$('iframe').attr('src',obj);
}

setTimeout(function(){
    $.post({
        url:"countScienceMessageNotice.do",
        success:function(data){
            messagenews=data.count;
            if(data.count!=0){
                $("#newsnull").append("<div id='messagenum'>"+data.count+"</div>");
            }

        }
    })
},1000);
</script>
</body>
</html>