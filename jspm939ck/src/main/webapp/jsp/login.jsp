<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>足球赛会管理系统</title>
<link href="${pageContext.request.contextPath}/resources/assets2/login.css" rel="stylesheet" type="text/css" />
<style>
	body {
		background: url("${pageContext.request.contextPath}/resources/assets2/images/background.jpg") no-repeat;
	}
	.login_box{
		display: flex;
		justify-content: flex-end;
		margin-right: 200px;
	}
	
</style>
</head>

<body>
<div class="login_box">
      <!--<div class="login_l_img"><img src="${pageContext.request.contextPath}/resources/assets2/images/login-img.png" /></div>-->
      <div class="login">
          <div class="login_logo"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/login_logo.png" /></a></div>
          <div class="login_name">
               <p>足球赛会管理系统</p>
          </div>
          <form id="loginForm" method="post">
              <input id="username" name="username" type="text" placeholder="用户名">
			  <input name="password" type="password" id="password" placeholder="密码"/>
              <div id="rolesGroup">
              	<label>角  色 :</label>
              </div>
              
              <input value="登录" style="width:100%;" type="submit" onclick="login()">
			  							  							  							  							  							  							  							  							  							  			  									
		  </form>
      </div>
</div>
	
	<script src="${pageContext.request.contextPath}/resources/assets2/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets2/jquery.form.js"></script>
	<script type="text/javascript">
	
	 <%@ include file="utils/menu.jsp"%>	
	 <%@ include file="utils/baseUrl.jsp"%>
	 var role = "";
	 var accountTableName = "";
  	 //渲染角色选择
  	 function setRoleOption(){
  		 for(var i=0;i<menus.length;i++){

  			 var checkbox = document.createElement('input');
  			 checkbox.setAttribute('type','radio');
  			 checkbox.setAttribute('name','chk');
  			 checkbox.setAttribute('value',menus[i].roleName);
  			 var attr = "checkRole(" + "\'" + menus[i].roleName  + "\',\'"+  menus[i].tableName + "\')";
  			 checkbox.setAttribute('onclick',attr);
			 var text = document.createTextNode(menus[i].roleName);
  			 $('#rolesGroup').append(checkbox);
  			 $('#rolesGroup').append(text);
  		 }
  	 }
  	 function checkRole(roleName,tableName){
  			role = roleName;
			$('#loginForm').attr('action',baseUrl + tableName+ '/login');
			accountTableName = tableName;
  	 }
	  function login() {
		  $("#loginForm").ajaxForm(function (res) {
			  if(role == "" || role == null){
				  alert("请选择角色后再登录");
			  }else{
				  if(res.code == 0) {
					  alert("登录成功");
					  var username = $('#username').val();
					  window.sessionStorage.setItem('accountTableName',accountTableName);
					  window.sessionStorage.setItem('username',username);
					  window.sessionStorage.setItem('token', res.token);
					  window.sessionStorage.setItem('role', role);
					  window.location.href="${pageContext.request.contextPath}/index.jsp";
				  }
				  else{
					  alert(res.msg);
				  }
			  }
			  
		  });
	  }
		//动态调整表单盒子大小
		function resize(){
			var inputElements = document.getElementsByTagName('a');
			if(inputElements.length>3){
				var heightAttr = 'padding-bottom: 0; height: ' + (360 + (inputElements.length - 3) * 90) + 'px;';
				//$('.login').attr('style',heightAttr);
			}
			
		}
	  function ready(){
	  	  resize();
		  setRoleOption();
		  //$('#loginForm').attr('action',baseUrl+'users/login');
	  }
	  document.addEventListener("DOMContentLoaded", ready);
	</script>
</body>
</html>