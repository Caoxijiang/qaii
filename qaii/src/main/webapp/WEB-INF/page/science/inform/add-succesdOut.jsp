<!doctype html>
<html>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<head>
<meta charset="utf-8">
<title>提交成功</title>
<style>
	.box{
		margin: 0px auto;
		margin-top: 20px;
		padding: 10px;
		text-align:center;
	}
	.contern{
		margin:auto;
		padding: 20px 0px 25px 0px; 
		background:#f7f7f7;
		max-width: 550px;
		border: 1px solid #f0f0f0;
		border-radius: 3px;
	}
	.sucss{
		font-size:32px;
		color: #000;
	}
	.appendix{
		font-size:16px;
		color:#888;
	}
	a{
		text-decoration:none;
	}
	.close{
		margin: 0px auto;
		margin-top: 15px;
		background: #6ea9dc;
		color:#fff;
		width:150px;
		height: 40px;
		line-height: 40px;
		font-size: 20px;
		text-align: center;
		
	}
</style>
</head>

<body>
	<div class="box">
		<div class="contern">
			<div>
				<img src="${basePath}/image/success.png">
			</div>
			<div style="margin-top: 15px;">
				<span class="sucss"> 已提交成功</span>
			</div>
			<div style="margin-top: 15px;line-height: 30px">
				<span class="appendix">
					科研成果信息添加成功，待科技处审核<br />
					可关闭添加信息页面
				</span>
			</div>
			<a href="javascript:window.opener=null;window.open('','_self');window.close();">
				<div class="close">
					关闭
				</div>
			</a>
		</div>
	</div>
</body>
</html>
