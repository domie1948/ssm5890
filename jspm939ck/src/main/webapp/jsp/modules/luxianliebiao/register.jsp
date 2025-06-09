<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
<meta http-equiv="Pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache"> 
<meta http-equiv="Expires" content="0"> 
<title>线路追踪表注册</title>
<link href="${pageContext.request.contextPath}/resources/assets2/login.css" rel="stylesheet" type="text/css" />
</head>
  	<style>
		.error{
			color:red !important;
		}
	</style>
<body>
<div class="login_box">
      <div class="login_l_img"><img src="${pageContext.request.contextPath}/resources/assets2/images/login-img.png" /></div>
      <div class="login" style="padding-bottom: 0;height: 450px;">
          <div class="login_logo"><a href="#"><img src="${pageContext.request.contextPath}/resources/assets2/images/login_logo.png" /></a></div>
          <div class="login_name">
               <p>线路追踪表注册</p>
          </div>
          <form id="registerForm" method="post" action="">
		            </form>
      </div>
      
</div>
	
	<script src="${pageContext.request.contextPath}/resources/assets2/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets2/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript">
	
		<%@ include file="../../utils/menu.jsp"%>	
		<%@ include file="../../utils/baseUrl.jsp"%>
		// 表单校验
		function validform() {
			return $("#registerForm").validate({ 
				rules: {
																													title: {
															required: true,
														},
																								allnode: {
															required: true,
														},
																								curnode: {
														},
															},
				messages: {
																													title: {
															required: "标题不能为空",
														},
																								allnode: {
															required: "线路所有节点,用逗号分割不能为空",
														},
																								curnode: {
														},
															}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
			jQuery.validator.addMethod("isIdCardNo", function(value, element) {
				return this.optional(element) || idCardNoUtil.checkIdCardNo(value);
			}, "请正确输入您的身份证号码");
		}

		//动态调整表单盒子大小
		function resize(){
			var inputElements = document.getElementsByTagName('input');
			var heightAttr = 'margin-top: 0; padding-bottom: 0; height: ' + (360 + (inputElements.length - 3) * 90) + 'px;';
			$('.login').attr('style',heightAttr);
		}
		// 表单提交
		function submit() {
			if(validform() ==true){
				let data = {};
				let value = $('#registerForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				$.ajax({ 
					type: "POST",
					url: baseUrl + "route/register",
					contentType: "application/json",
					data:json,
					beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
					success: function(res){    
						if(res.code == 0){
						alert("注册成功!");
						window.location.href="${pageContext.request.contextPath}/jsp/login.jsp";
						}else if(res.code == 401){
							<%@ include file="../../static/toLogin.jsp"%> 	
						}else{
							alert(res.msg)
						}
					},
				});      
			}else{
				alert("表单未填完整或有错误");
			}
		}
		function ready(){
			resize()
			addValidation();
			//注册表单验证
		    $(validform());
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
		}
		document.addEventListener("DOMContentLoaded", ready);
	</script>
</body>
</html>