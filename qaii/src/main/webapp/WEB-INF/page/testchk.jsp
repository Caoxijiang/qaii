<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="basePath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<script src="${basePath}/js/jquery-3.3.1.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
$().ready(function(){
	$("#btn").click(function(){
		var a=$("#dat").val();
		$.ajax({
			type:"POST",
			url:"setdata.do",
		    data:{date:a},
			success:function(data){
				$("#dat2").val(data);
			},
			error:function(data){
				alert(data);
			}
		})
	});
	$("#btn2").click(function(){
		var a=$("#dat3").val();
		$.ajax({
			type:"POST",
			url:"setdata2.do",
		    data:{date:a},
			success:function(data){
				$("#dat4").val(data);
			}
		})
	});
	$("#btn3").click(function(){
		var a=$("#dat3").val();
		$.ajax({
			type:"POST",
			url:"TestPrint.do",
		    data:{date:a},
			success:function(data){
				alert("后台输出成功!");
			}
		})
	});
    $("#btn4").click(function(){
        var a=$("#dat5").val();
        $.ajax({
            type:"POST",
            url:"setdata6.do",
            data:{date:a},
            success:function(data){
                $("#dat6").val(data);
            }
        })
    });
})
	
</script>
</head>
<body>
	<form action="getfile.do" method="post" enctype="multipart/form-data">
		输入时间，转换为时间戳;
		<input type="text" name ="date" id ="dat">
		<input type="text" name ="date2 " id ="dat2"> 
		<button type="button" id="btn">TimetoStamp</button> <br>
		输入时间戳，转换为时间;
		<input type="text" name ="date3" id ="dat3">
		<input type="text" name ="date4" id ="dat4"> 
		<button type="button" id="btn2">StamptoTime</button> <br>
		<input type="file" name="file"> input file
		<input type="submit" value="提交"><br><br>
		<button type="button" id="btn3">测试后台输出</button><br>
		输入时间，转换为时间类型：
		<input type="text" name ="date5" id ="dat5">
		<input type="text" name ="date6" id ="dat6">
		<button type="button" id="btn4">StamptoTime</button> <br>
	</form>
</body>
</html>