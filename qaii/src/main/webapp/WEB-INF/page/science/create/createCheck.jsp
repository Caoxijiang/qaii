<!DOCTYPE html>
<html>
<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <title>查看详情界面</title>
  <link rel="shortcut icon" type="image/x-icon" href="${basePath}/image/icon.ico" media="screen" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/layui.css" media="all" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/layuiAdd.css" media="all" />
  <link rel="stylesheet" href="${basePath}/commen/layui/css/style.css">
  <link rel="stylesheet" href="${basePath}/commen/layui/css/science.css" media="all" />
	<script src="${basePath}/js/jquery-3.3.1.min.js"></script>
	<script src="${basePath}/js/jquery.table2excel.js"></script>
  <style>
    body{margin: 10px;}
    .demo-carousel{height: 200px; line-height: 200px; text-align: center;}
    .layui-table-body {
	    height: -moz-calc( 100vh - 215px );
	    height: -webkit-calc( 100vh - 215px );
	    height: calc( 100vh - 215 px );
	}
  </style>
</head>
<body id="bodyHei">
<div class="tool">
	<div class="techadd">
		<img src="${basePath}/image/home.png"  class="home"/>
		<span>首页&nbsp;>&nbsp;</span>
		<span class="blue">平台建设&nbsp;—&nbsp;查看详情界面</span>
	</div>
	<!--		导出-->
	<button onclick="srchange('create.do')" class="layui-btn btn export " style="float: right;margin-right: 115px;margin-top: 12.5px;">
		返回
	</button>		
</div>
<div class="layui-container addtop"> 
<input id="param" value='${param.userId}' type="hidden" />
<!-- 采用表格内直接行结构  -->
  <form class="layui-form" action="addresearchInfo.do" method="post" lay-filter="example"> 
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	    	<div class="layui-form-item">
				<label class="layui-form-label">申报时间&nbsp;<span class="star" disabled="">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatApplytime" class="layui-input input" id="test1">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">来源&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatSource" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      	<div class="layui-form-item">
				<label class="layui-form-label">级别&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<select name="govplatLevel" lay-verify="required" lay-search="" lay-verify="required" class="input" disabled="">
						<option value="">   </option>
						<option value="国家级">国家级</option>
						<option value="省级">省级</option>
						<option value="市级">市级</option>
						<option value="区级">区级</option>
						<option value="地方">地方</option>
						<option value="其他">其他</option>
					</select>
				</div>
			</div>
	    </div>
	  </div>
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">平台名称&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatName" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">项目实施期&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatImplementtime" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">承担单位&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatDutyunit" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	  </div>
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">协作单位&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatCooperationunit" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">主管部门&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<select name="govplatManagedepart" lay-verify="required" lay-search="" id="deptt" class="input" disabled="">
						
					</select>
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">申请报送部门&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<select name="govplatApplydepart" lay-verify="required" lay-search="" id="deptt1" class="input" disabled="">
						
					</select>
				</div>
			</div>
	    </div>
	  </div>
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">承担部门&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<select name="govplatAssumedepart" lay-verify="required" lay-search="" id="deptt2" class="input" disabled="">
						
					</select>
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">平台负责人&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<input type="text" name="govplatPlatformper" autocomplete="off" lay-verify="required" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">是否立项&nbsp;<span class="star">*</span></label>
				<div class="layui-input-block">
					<select name="govplatProjectapproval" lay-verify="required" lay-search="" lay-verify="required" class="input" disabled="">
						<option value="">   </option>
						<option value="是">是</option>
						<option value="否">否</option>
					</select>
				</div>			</div>
	    </div>
	  </div>
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">立项编号</label>
				<div class="layui-input-block">
					<input type="text" name="govplatApprovalnum" autocomplete="off" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">立项时间</label>
				<div class="layui-input-block">
					<input type="text" name="govplatApprovaltime" class="layui-input input" id="test2">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">资助金额（万元）</label>
				<div class="layui-input-block">
					<input type="text" name="govplatSubvention" autocomplete="off" class="layui-input input" disabled="">
				</div>
			</div>
	    </div>
	  </div>
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
	       <div class="layui-form-item">
				<label class="layui-form-label">资金到位时间</label>
				<div class="layui-input-block">
					<input type="text" name="govplatFundtime" class="layui-input input" id="test3" disabled="">
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">中期检查考核结果</label>
				<div class="layui-input-block">
					<div class="layui-row">
						 <div class="layui-col-xs6 layui-col-md6">
							<input type="text" name="govplatMiddletime" class="layui-input input" id="test4" disabled="">
						 </div>
						 <div class="layui-col-xs6 layui-col-md6">
							<select name="govplatMiddleresult" lay-search="" class="input" disabled="">
								<option value="">   </option>
								<option value="通过">通过</option>
								<option value="不通过">不通过</option>
							</select>
						</div>
					</div>
				</div>
			</div>
	    </div>
	    <div class="layui-col-xs4 layui-col-md4">
	      <div class="layui-form-item">
				<label class="layui-form-label">年度检查考核结果</label>
				<div class="layui-input-block">
					<div class="layui-row">
						 <div class="layui-col-xs6 layui-col-md6">
							<input type="text" name="govplatYeartime" class="layui-input input" id="test5">
						 </div>
						 <div class="layui-col-xs6 layui-col-md6">
							<select name="govplatYearresult" lay-search="" class="input" disabled="">
								<option value="">   </option>
								<option value="通过">通过</option>
								<option value="不通过">不通过</option>
							</select>
						</div>
					</div>
				</div>
			</div>
	    </div>
	  </div>
	  <!--   文本框-->
	  <div class="layui-row">
	    <div class="layui-col-xs4 layui-col-md4">
			<div class="layui-form-item">
				<label class="layui-form-label">项目结题验收成果</label>
				<div class="layui-input-block">
					<div class="layui-row">
						 <div class="layui-col-xs6 layui-col-md6">
							<input type="text" name="govplatEndtime" class="layui-input input" id="test6" disabled="">
						 </div>
						 <div class="layui-col-xs6 layui-col-md6">
							<select name="govplatEndresult" lay-search="" class="input" disabled=""> 
								<option value="">   </option>
								<option value="通过">通过</option>
								<option value="不通过">不通过</option>
							</select>
						</div>
					</div>
				</div>
			</div>
 	  	</div>
 	  </div>
 	  <div class="layui-row">
 	  	<div class="layui-col-xs12 layui-col-md12">
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">备注</label>
				<div class="layui-input-block">
					<textarea name="govplatRemark" class="layui-textarea" disabled=""></textarea>
				</div>
			</div>
 	  	</div>
 	  </div>
  </form>
  <div class="layui-row">
   	   <div class="layui-col-md12">
		   <div class="layui-form-item">
			<div class="layui-input-block" style="text-align: right;">
			  <button class="layui-btn" onclick="srchange('research.do')">返回</button>
			</div>
		  </div>
  		</div>
  	</div>
</div>
<script src="${basePath}/js/iframesrc.js"></script>
<script src="${basePath}/commen/layui/layui.js"></script>
<script>
//JavaScript代码区域

layui.use(['form', 'layedit', 'laydate','element','upload'], function(){
  var form = layui.form,
	element = layui.element,
	layer = layui.layer,
	laydate = layui.laydate,
	upload = layui.upload;
   var id=${param.userId};
   if(id!=null){
		$.post({
			url:"showGovplatformDetails.do",
			data:{
				id:id
			},
			success:function(data){
				if(data.data!=null){
					let researchInfo=data.data;
					//表单初始赋值 从表单中提取数据
					  form.val('example', {
						"govplatApplytime":researchInfo.govplatApplytime,
						"govplatSource":researchInfo.govplatSource,
						"govplatLevel":researchInfo.govplatLevel,
						"govplatName":researchInfo.govplatName,
						"govplatImplementtime":researchInfo.govplatImplementtime,
						"govplatDutyunit":researchInfo.govplatDutyunit,
						"govplatCooperationunit":researchInfo.govplatCooperationunit,
						"govplatManagedepart":researchInfo.govplatManagedepart,
						"govplatApplydepart":researchInfo.govplatApplydepart,
						"govplatAssumedepart":researchInfo.govplatAssumedepart,
						"govplatPlatformper":researchInfo.govplatPlatformper,
						"govplatProjectapproval":researchInfo.govplatProjectapproval,
						"govplatApprovalnum":researchInfo.govplatApprovalnum,
						"govplatApprovaltime":researchInfo.govplatApprovaltime,
						"govplatSubvention":researchInfo.govplatSubvention,
						"govplatFundtime":researchInfo.govplatFundtime,
						"govplatMiddletime":researchInfo.govplatMiddletime,
						"govplatMiddleresult":researchInfo.govplatMiddleresult,
						"govplatYeartime":researchInfo.govplatYeartime,
						"govplatYearresult":researchInfo.govplatYearresult,
						"govplatEndtime":researchInfo.govplatEndtime,
						"govplatEndresult":researchInfo.govplatEndresult,
						"govplatRemark":researchInfo.govplatRemark,
						"govplatFile":researchInfo.govplatFile
						
					  })
				}else{
					alert("查看详情失败")
				}
			}
		})
   }else{
	   alert("请刷新页面");
   }

});
	
</script>
</body>
</html>        
        