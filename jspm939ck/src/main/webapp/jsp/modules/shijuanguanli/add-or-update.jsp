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
											<li><span class="bread-blod">试卷管理</span></li>
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
										<h1>试卷 编辑</h1>
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
																	<label class="login2 pull-right pull-right-pro">试卷名称</label>
																</div>
																<div class="col-lg-2">
																	<input id="name" name="name" class="form-control"
																		placeholder="试卷名称">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">考试时长</label>
																</div>
																<div class="col-lg-2">
																	<input id="time" name="time"
																		class="form-control" placeholder="考试时长">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">试卷状态</label>
																</div>
																<div class="col-lg-2">
																	<div class="form-select-list">
                                                                        <select id="statusSelect" class="form-control custom-select-value" name="status">
                                                                            <option class="statusOption" value="1">启用</option>
                                                                            <option class="statusOption" value="0">禁用</option>
                                                                        </select>
                                                                    </div>
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
		var tableName = "exampaper";
		var pageType = "add-or-update";
		var updateId = "";
	
		// 表单提交
		function submit() {
			if (validform() == true) {
				let data = {};
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function(index, item) {
					if(item.name == 'time'){
						data[item.name] = item.value * 60;
					}else{
						data[item.name] = item.value;
					}
					
				});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				if (updateId != null && updateId != "null" && updateId != '') {
					urlParam = 'update';
					successMes = '修改成功';
				} else {

					urlParam = 'save';
					successMes = '添加成功';
				}
				$.ajax({
					type : "POST",
					url : baseUrl + "exampaper/" + urlParam,
					contentType : "application/json",
					data : json,
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							window.sessionStorage.removeItem('id');
							alert(successMes);
							window.location.href = "list.jsp";
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg)
						}
					},
				});
			} else {
				alert("表单未填完整或有错误");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules : {
					name : {required : true,},
					time : {
						required : true,
					},					
				},
				messages : {
					name : {required : "试卷名称不能为空",},
					time : {
						required : "考试时长不能为空",
					},				
				}
			}).form();
		}

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if (id != null && id != "" && id != "null") {
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({
					type : "GET",
					url : baseUrl + "exampaper/info/" + id,
					beforeSend : function(xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
								.getItem('token'));
					},
					success : function(res) {
						if (res.code == 0) {
							ruleForm = res.data
							// 数据填充
							dataBind();
							//注册表单验证
							$(validform());				
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg);
						}
					},
				});
			} else {
				//注册表单验证
				$(validform());
			}
		}
		
		// 清除可能会重复渲染的selection
		function clear(className) {
			var elements = document.getElementsByClassName(className);
			for (var i = elements.length - 1; i >= 0; i--) {
				elements[i].parentNode.removeChild(elements[i]);
			}
		}

		function dataBind() {
			$("#updateId").val(ruleForm.id);
			$("#name").val(ruleForm.name);
			$("#time").val(ruleForm.time/60);
			var options = document.getElementsByClassName('statusOption');
			for(var i=0;i<options.length;i++){
				if(options[i].value == ruleForm.status){
					options[i].selected = true;
				}
			}
		}

		
		// 用户登出
		<%@ include file="../../static/logout.jsp"%>
		$(document).ready(function() {
			setMenu();
			getDetails();
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