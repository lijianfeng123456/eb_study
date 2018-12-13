<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/style/js/jquery.js"></script>
<title>测试页面</title>
</head>
<body>
<h2>hello SSM</h2>
<hr style="border: 1px solid red">
<span>${user}</span>
<table style="border: 1px solid yellow; ">
<tr><td><input type="text" id="username" name="username" placeholder="用户名"/><td></tr>
<tr><td><input type="password" id="password" name="password" placeholder="密码"/><td></tr>
<tr><td><button type="button" id="login"><span style="color:blue">登录</span></button><td></tr>
</table>
<script type="text/javascript">

$("#login").click(function(){
	if($("#username").val()==null||$("#username").val()==""||$("#password").val()==null||$("#password").val()==""){
		alert("用户名和密码不能为空！");
	}else{
	$.ajax({
		url:"<%=request.getContextPath()%>/s/login",
		type:"POST",
		data:{"username":$("#username").val(),"password":$("#password").val()},
		success:function(data){
			if(data=="success"){
				alert("登陆成功!")
			}else{
				alert("密码不正确!")
			}
		},
		error:function(e){
			alert(e)
		}
	});
	
	}
	
});
</script>
</body>
</html>