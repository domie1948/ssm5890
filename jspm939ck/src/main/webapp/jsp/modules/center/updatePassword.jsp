<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
<%@ include file="../../static/head.jsp"%>
<link
	href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
	rel="stylesheet">
<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
</script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
.error {
	color: red !important;
}
</style>
<body class="materialdesign">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<!-- Header top area start-->
	<div class="wrapper-pro">
		<%@ include file="../../static/sidebar.jsp"%>
		<!-- Header top area start-->
		<div class="content-inner-all">
			<%@ include file="../../static/headerTop.jsp"%>
			<!-- Header top area end-->
			<!-- Breadcome start-->
			<div class="breadcome-area mg-b-30 small-dn">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="breadcome-list shadow-reset">
								<div class="row">
									<div class="col-lg-6">
										<div class="breadcome-heading"></div>
									</div>
									<div class="col-lg-6">
										<ul class="breadcome-menu">
											<li><a
												href="${pageContext.request.contextPath}/index.jsp">主页</a> <span
												class="bread-slash">/</span></li>
											<li><span class="bread-blod">修改密码</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Breadcome End-->

			<!-- Breadcome start-->

			<!-- Breadcome End-->
			<!-- Basic Form Start -->
			<div class="basic-form-area mg-b-15">
				<div class="container-fluid">

					<div class="row">
						<div class="col-lg-12">
							<div class="sparkline12-list shadow-reset mg-t-30">
								<div class="sparkline12-hd">
									<div class="main-sparkline12-hd">
										<h1>修改密码 编辑</h1>
										<div class="sparkline12-outline-icon">
											<span class="sparkline12-collapse-link"><i
												class="fa fa-chevron-up"></i></span> <span><i
												class="fa fa-wrench"></i></span> <span
												class="sparkline12-collapse-close"><i
												class="fa fa-times"></i></span>
										</div>
									</div>
								</div>
								<div class="sparkline12-graph">
									<div class="basic-login-form-ad">
										<div class="row">
											<div class="col-lg-12">
												<div class="all-form-element-inner">
													<form id="addOrUpdateForm" action="#">
														<input id="updateId" name="id" type="hidden">
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">原密码</label>
																</div>
																<div class="col-lg-2">
																	<input id="oldPassword" name="oldPassword"
																		class="form-control" placeholder="原密码">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">新密码</label>
																</div>
																<div class="col-lg-2">
																	<input id="newPassword" name="newPassword" class="form-control"
																		placeholder="新密码">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">确认密码</label>
																</div>
																<div class="col-lg-2">
																	<input id="confirmPassword" name="confirmPassword"
																		class="form-control" placeholder="确认密码">
																</div>
															</div>
														</div>

														<div class="form-group-inner">
															<div class="login-btn-inner">
																<div class="row">
																	<div class="col-lg-3"></div>
																	<div class="col-lg-9">
																		<div class="login-horizental cancel-wp pull-left">
																			<button id="submitBtn"
																				class="btn btn-sm btn-primary login-submit-cs"
																				type="button">提交</button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Basic Form End-->

		</div>
	</div>
	<!-- Footer Start-->

	<!-- Footer End-->
	<!-- Chat Box Start-->
	<!-- Chat Box End-->
	<%@ include file="../../static/foot.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>

	<script>
		
	<%@ include file="../../utils/menu.jsp"%>
		
	<%@ include file="../../static/setMenu.js"%>
		
	<%@ include file="../../utils/baseUrl.jsp"%>
		var tableName = "xiugaimima";
		var pageType = "add-or-update";
		var updateId = "";
		var password = '';
		var accountTableName = ''
		var ruleForm = {};
	
		// 表单提交
		function submit() {
			if (validform() == true) {			
				if(password == $('#oldPassword').val()){
					httpJson(accountTableName + "/update","POST",{
						id:updateId,
						mima: $('#newPassword').val(),
						password: $('#newPassword').val()
					},(res)=>{
						window.location.href = '../../login.jsp';
						alert('修改成功，请重新登陆');
					});
					
				}else{
					alert('原密码输入错误')
				}

			} else {
				alert("表单未填完整或有错误");
			}
		}
	
		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					oldPassword : {
						required : true,
					},
					newPassword : {
						required : true,
					},
					confirmPassword : {
						required : true,
						equalTo: "#newPassword",
					},
				},
				messages : {
					oldPassword : {
						required : "原密码不能为空",
					},
					newPassword : {
						required : "新密码不能为空",
					},
					confirmPassword : {
						required : "确认密码不能为空",
						equalTo: "两次密码输入不一致",
					},
				}
			}).form();
		}
		
		function getId() {
			var userName = window.sessionStorage.getItem('username')
			accountTableName = window.sessionStorage.getItem('accountTableName')
			http(accountTableName+'/session','GET',{},(res)=>{
				if(res.code == 0){
					updateId = res.data.id;
					if(res.data != null && res.data.mima != null && res.data.mima != ''){
						password = res.data.mima;
					} else if(res.data != null && res.data.password != null && res.data.password != ''){
						password = res.data.password;
					}
					
				}		
			});
		}
		$(document).ready(function() {
			setMenu();
			getId();					
			$('#submitBtn').on('click', function(e) {
				e.preventDefault();
				//console.log("点击了...提交按钮");
				submit();
			});
			<%@ include file="../../static/myInfo.js"%>
		});
	</script>
</body>

</html>