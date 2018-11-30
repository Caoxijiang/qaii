<!DOCTYPE html>
<html>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>科研成果管理系统</title>
 <link rel="shortcut icon" type="image/x-icon" href="${basePath}/image/icon.ico" media="screen" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/layui.css" media="all" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/layuiAdd.css" media="all" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/style.css">
  <link rel="stylesheet" href="${basePath}/commen/layui/css/science.css" media="all" />
  <link rel="stylesheet" href="${basePath}/css/industry.css" media="all" />
  <script src="${basePath}/js/jquery-3.3.1.min.js"></script>
  <style>
    body{margin: 10px;}
  </style>
</head>
<body id="bodyHei">
<div class="tool">
	<div class="techadd">
		<img src="${basePath}/image/home.png"  class="home"/>
		<span>首页&nbsp;>&nbsp;</span>
		<span class="blue">孵化企业管理&nbsp;—&nbsp;修改界面</span>
	</div>
	<!--		导出-->
	<button onclick="srchange('hatch.do')" class="layui-btn btn export " style="float: right;margin-right: 115px;margin-top: 12.5px;">
		返回
	</button>		
</div>
<div class="layui-container addtop">
	<button id="addmumber" data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">
		<i class="layui-icon layui-icon-add-1"></i>添加成员
	</button>
  <form class="layui-form" method="post" lay-filter="example" action="updateIndusInfo.do" enctype="multipart/form-data">
  <!-- 基本信息 -->
	  <div class="layui-row contern">
	  	<h1>基本信息</h1>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">企业名称</label>
			    <div class="layui-input-block">
			      <input type="text" name="companyName" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
	    <div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">统一社会信用代码</label>
			    <div class="layui-input-block">
			      <input type="text" name="creditCode" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">成立时间</label>
			    <div class="layui-input-block">
			      <input type="text" name="establishTime" lay-verify="title" autocomplete="off" class="layui-input" id="test1">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">公司类型</label>
			    <div class="layui-input-block">
			      <input type="text" name="companyType" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">公司住所</label>
			    <div class="layui-input-block">
			      <input type="text" name="companyLocation" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">法定代表人</label>
			    <div class="layui-input-block">
			      <input type="text" name="legalRepresentative" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">注册资本</label>
			    <div class="layui-input-block">
			      <input type="text" name="registeredCapital" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs12 layui-col-md12">
			 <div class="layui-form-item">
			    <label class="site-demo-button layui-form-label">经营范围</label>
			    <div class="layui-input-block">
			       <textarea class="layui-textarea" name="businessScope" lay-verify="content" id="LAY_demo_editor"></textarea>
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs12 layui-col-md12">
			 <div class="layui-form-item">
			    <div class="mumberBox" id="layerDemo">
			    	<label class="layui-form-label mumber">股东出资及成员任职</label>
			    </div>
			    <div class="layui-input-block">
			       <table class="layui-hide" id="test" lay-filter="demo"></table>
			       <script type="text/html" id="barDemo">
  					<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
				   </script>
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">所属孵化器</label>
			    <div class="layui-input-block">
			      <input type="text" name="incubatorName" lay-verify="title" autocomplete="off" class="layui-input">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">入孵时间</label>
			    <div class="layui-input-block">
			      <input type="text" name="hatchingTime" lay-verify="title" autocomplete="off" class="layui-input" id="test2">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			 <div class="layui-form-item">
			    <label class="layui-form-label">有限期</label>
			    <div class="layui-input-block">
			      <input type="text" name="limitedPeriod" lay-verify="title" autocomplete="off" class="layui-input" id="test3">
			    </div>
			  </div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			<div class="layui-form-item itemadd">
				<label class="layui-form-label">上传营业执照</label>
				<div class="layui-input-block">
					<div class="layui-upload">
					  <button type="button" class="layui-btn layui-btn-normal" id="test10">选择文件</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 创新能力 -->
	<div class="layui-row contern">
	  	<h1>创新能力 </h1>
	  	<div class="layui-col-xs6 layui-col-md6">
	  		<div class="createbox">
				<div class="layui-form-item itemadd">
				    <label class="layui-form-label createlabel" id="isThousandSailEnterprise">是否“千帆计划”入库企业</label>
				    <div class="layui-input-block createblock">
				      <input type="radio" name="isThousandSailEnterprise" value="0" title="否" checked="">
				      <input type="radio" name="isThousandSailEnterprise" value="1" title="是">
				    </div>
				</div>
			</div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			<div class="createbox">
				<div class="layui-form-item itemadd">
				    <label class="layui-form-label createlabel" id="isBillionEnterprise">是否入选青岛市科技型企业培育“百千万”工程</label>
				    <div class="layui-input-block createblock">
				      <input type="radio" name="isBillionEnterprise" value="0" title="否" checked="">
				      <input type="radio" name="isBillionEnterprise" value="1" title="是">
				    </div>
				</div>
			</div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			<div class="createbox">
				<div class="layui-form-item itemadd">
				    <label class="layui-form-label createlabel">是否高新技术企业</label>
				    <div class="layui-input-block createblock" id="isHighTechnologyEnterprise">
				      <input type="radio" name="isHighTechnologyEnterprise" value="0" title="否" checked="">
				      <input type="radio" name="isHighTechnologyEnterprise" value="1" title="是">
				    </div>
				</div>
				<div class="additionBox" id="isHighTech" style="display:none;">
					<div class="layui-form-item itemadd">
						<label class="layui-form-label">发证时间</label>
					    <div class="layui-input-block">
					      <input type="text" name="certificateTime" lay-verify="title" autocomplete="off" class="layui-input" id="test4">
					    </div>
					</div>
					<div class="layui-form-item itemadd">
						<label class="layui-form-label">证书编号</label>
					    <div class="layui-input-block">
					      <input type="text" name="certificateCode" lay-verify="title" autocomplete="off" class="layui-input">
					    </div>
					</div>
					<div class="layui-form-item itemadd">
						<label class="layui-form-label">发表电子版</label>
						<div class="layui-input-block">
							<div class="layui-upload">
							  <button type="button" class="layui-btn layui-btn-normal" id="test8">选择文件</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-col-xs6 layui-col-md6">
			<div class="createbox">
				<div class="layui-form-item itemadd">
				    <label class="layui-form-label createlabel">是否科技型中小企业</label>
				    <div class="layui-input-block createblock" id="isTechnologyEnterprise">
				      <input type="radio" name="isTechnologyEnterprise" value="0" title="否" checked="">
				      <input type="radio" name="isTechnologyEnterprise" value="1" title="是">
				    </div>
				</div>
				<div class="additionBox" id="isTech" style="display:none;">
					<div class="layui-form-item itemadd">
						<label class="layui-form-label">入库登记编号</label>
					    <div class="layui-input-block">
					      <input type="text" name="incomingRegistrationCode" lay-verify="title" autocomplete="off" class="layui-input">
					    </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="layui-row contern">
	  	<h1>变更记录</h1>
		<div class="layuichange">
	       <table class="layui-hide" id="table2" lay-filter="demo2"></table>
	       <script type="text/html" id="barDemo2">
  				<a class="layui-btn layui-btn-edit layui-btn-xs" lay-event="edit">变更时间修改</a>
		   </script>
	    </div>
	</div>
    <div class="layui-row">
   	   <div class="layui-col-md12">
		   <div class="layui-form-item">
			<div class="layui-input-block" style="text-align: right;">
			  <button class="layui-btn" lay-submit="" lay-filter="demo1" onSubmit="imgjudge()">立即提交</button>
			  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		  </div>
  		</div>
  	</div>
 </form>
</div>
<script src="${basePath}/commen/layui/layui.js"></script>
<script>
var id=${requestScope.Info[0]};
layui.use(['layer','form', 'layedit', 'laydate','element','upload','table'], function(obj){
  var form = layui.form,
	element = layui.element,
	layer = layui.layer,
	laydate = layui.laydate,
	upload = layui.upload,
    table = layui.table;
	//日期
	 laydate.render({
	   	elem: '#test1'
	  });
	//日期
	 laydate.render({
	   	elem: '#test2'
	  });
	//日期
	 laydate.render({
	   	elem: '#test3'
	  });
	//日期
	 laydate.render({
	   	elem: '#test4'
	  });
//文件上传发表电子版
 upload.render({
   elem: '#test8'
   ,url: '/upload/'
   ,auto: false
   ,accept: 'file' //普通文件
   ,bindAction: '#test9'
   ,done: function(res){
     console.log(res)
   }
 });
//文件上传营业执照
 upload.render({
   elem: '#test10'
   ,url: '/upload/'
   ,auto: false
   ,accept: 'file' //普通文件
   ,bindAction: '#test11'
   ,done: function(res){
     console.log(res)
   }
 });
  table.render({
	    elem: '#test'
	    ,method:'post'
	    ,url:'selectIndusStackInfo.do?id='+id
	    ,cellMinWidth: 100
	    ,cols: [[
		      {field:'id', title: '序号',type:'numbers',sort: true, minWidth: 100}
		      ,{field:'shareholderName', title: '股东名称'}
		      ,{field:'contributionProportion',title: '出资比例', sort: true}
		      ,{field:'contributionTime',title: '出资时间', sort: true}
		      ,{field:'shareholderPosition', title: '股东职务', width: '30%', minWidth: 100}
		    ]],
		    data:obj.data
		  });
  table.on('tool(demo)', function(obj){
	    var data = obj.data;
	   if(obj.event === 'del'){
	      layer.confirm('真的删除行么', function(index){
	        obj.del();
	        layer.close(index);
	      });
	    }
	  });
    //变更信息显示
    table.render({
        elem: '#table2'
        ,method:'post'
        ,url:'selectRecordInfoByinId.do?pid='+id  //*back 变更信息数据接口 删除data*/
        ,cellMinWidth: 100
        ,cols: [[
            {field:'id', title: '序号',type:'numbers',sort: true, minWidth: 100}
            ,{field:'changedTime', title: '变更时间'}
            ,{field:'listName', title: '变更记录'}
            ,{field:'oldName',title:"原记录"}
            ,{field:'newName',title:"现记录"}
            ,{fixed: 'right', width:178, align:'center', toolbar: '#barDemo2'}
        ]],
        data: obj.data
    });
  table.on('tool(demo2)', function(obj){
	    var data = obj.data;
	    var id=data.id;
	   if(obj.event === 'edit'){
		   layer.open({
	    		  type: 2, 
	    		  title:'变更时间修改',
	    		  content: 'hatchchangetime.do?id='+id,
	 		      shade: 0.3, //不显示遮罩
	 		      area: ['390px', '380px']
	    		});
	    }
	  });
  //表单初始赋值
  /*back 表单初始赋值，根据接口修改相应的name值*/
  $.post({
	  url:"selectIndusCheckInfo.do",
	  data:{
		  id:id
	  },
	  success:function(data){
		  let Info=data.data[0];
		  console.log(Info.isTechnologyEnterprise);
		  if(Info!=null){
			  form.val('example', {
				    "companyName": Info.companyName //
				    ,"creditCode": Info.creditCode
				    ,"establishTime":Info.establishTime
				    ,"companyType":Info.companyType
				    ,"companyLocation":Info.companyLocation
				    ,"legalRepresentative":Info.legalRepresentative
				    ,"registeredCapital":Info.registeredCapital
				    ,"businessScope":Info.businessScope
				    ,"incubatorName":Info.incubatorName
				    ,"hatchingTime":Info.hatchingTime
				    ,"limitedPeriod":Info.limitedPeriod
				    ,"isThousandSailEnterprise": Info.isThousandSailEnterprise+""//“千帆计划”入库企业
				    ,"isBillionEnterprise": Info.isThousandSailEnterprise +""//是否入选青岛市科技型企业培育“百千万”工程
				    ,"isHighTechnologyEnterprise": Info.isHighTechnologyEnterprise+"" //是否高新技术企业
				    ,"isTechnologyEnterprise": Info.isTechnologyEnterprise+"" //是否科技型中小企业
				    ,"certificateTime":Info.certificateTime
				    ,"certificateCode":Info.certificateCode
				    ,"incomingRegistrationCode":Info.incomingRegistrationCode
				    ,"desc": ""
				})
				  //科技型中小企业
				  var isTech=Info.isTechnologyEnterprise+"";
				  if(isTech==1){
						$("#isTech").show();
					}else{
						$("#isTech").hide();
					}
				  /* 高新技术企业 */
				  var isHighTech=Info.isTechnologyEnterprise+"";
				  if(isHighTech==1){
						$("#isHighTech").show();
					}else{
						$("#isHighTech").hide();
					}
		  }else{
			  $("#www").html("数据接口异常")
		  }
	  }
  })

});
/**根据选择框显示隐藏内容**/
 /* 高新技术企业 */
$('#isHighTechnologyEnterprise').click(function(){
	var s=$('input[name="isHighTechnologyEnterprise"]:checked ').val();
	if(s==1){
		$("#isHighTech").show();
	}else{
		$("#isHighTech").hide();
	}
})
/*科技中小型企业*/
$('#isTechnologyEnterprise').click(function(){
	var s=$('input[name="isTechnologyEnterprise"]:checked ').val();
	if(s==1){
		$("#isTech").show();
	}else{
		$("#isTech").hide();
	}
})
 /*添加成员*/
 $('#addmumber').on('click', function(){
 	layer.open({
       type: 2
       ,title: "股东出资及成员管理"
       ,content: 'hatchmumber.do'
       ,shade: 0.3 //不显示遮罩
       ,area: ['390px', '380px']
       ,yes: function(){
         layer.closeAll();
       }
     });
   });
</script>
<script src="${basePath}/js/iframesrc.js"></script>
</body>
</html>