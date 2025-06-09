<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
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
											<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a> <span
													class="bread-slash">/</span></li>
											<li><span class="bread-blod">留言板管理</span></li>
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
										<h1>留言板管理 编辑</h1>
										<div class="sparkline12-outline-icon">
											<span class="sparkline12-collapse-link"><i
													class="fa fa-chevron-up"></i></span> <span><i
													class="fa fa-wrench"></i></span> <span
												class="sparkline12-collapse-close"><i class="fa fa-times"></i></span>
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
																	<label
																		class="login2 pull-right pull-right-pro">留言人用户名</label>
																</div>
																<div class="col-lg-2">
																	<input id="username" name="username"
																		class="form-control" readonly="readonly">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">留言内容</label>
																</div>
																<div class="col-lg-2">
																	<textarea id="content-input" name="content"
																		class="form-control" placeholder="留言内容" rows="5"
																		cols="20" readonly="readonly">
																	</textarea>
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">回复内容</label>
																</div>
																<div class="col-lg-2">
																	<textarea id="reply-input" name="reply"
																		class="form-control" placeholder="回复内容" rows="5"
																		cols="20">
																	</textarea>
																</div>
															</div>
														</div>



														<div class="form-group-inner">
															<div class="login-btn-inner">
																<div class="row">
																	<div class="col-lg-3"></div>
																	<div class="col-lg-9">
																		<div
																			class="login-horizental cancel-wp pull-left">
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
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8"
		src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script>
        <%@include file = "../../utils/menu.jsp" %>
		<%@include file = "../../static/setMenu.js" %>
		<%@include file = "../../utils/baseUrl.jsp" %>   

        var tableName = "liuyanbanguanli";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};


		var ruleForm = {};
		var vm = new Vue({
			el: '#addOrUpdateForm',
			data: {
				ruleForm: {},
			},
			beforeCreate: function () {
				var id = window.sessionStorage.getItem("id");
				if (id != null && id != "" && id != "null") {
					http("messages/info/" + id, "GET", {}, (res) => {
						if (res.code == 0) {
							vm.ruleForm = res.data;
						}
					});
				}
			},
			methods: {}
		});

		// 表单提交
		function submit() {
			if (validform() == true) {
				let data = {};
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) {
					data[item.name] = item.value;
				});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				let flag = true;
				if (updateId != null && updateId != "null" && updateId != '') {
					urlParam = 'update';
					successMes = '回复成功';
				} else {

					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("messages/" + urlParam, "POST", data, (res) => {
					if (res.code == 0) {
						window.sessionStorage.removeItem('id');
						if (flag) {
							alert(successMes);
						}
						if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
							window.sessionStorage.removeItem('onlyme');
							window.location.href = "${pageContext.request.contextPath}/index.jsp";
						} else {
							window.location.href = "list.jsp";
						}
					}
				});
			} else {
				alert("表单未填完整或有错误");
			}
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({
				rules: {
					content: {},
					reply: {},
				},
				messages: {
					content: {},
					reply: {},
				}
			}).form();
		}

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if (id != null && id != "" && id != "null") {
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("messages/info/" + id, "GET", {}, (res) => {
					if (res.code == 0) {
						ruleForm = res.data
						// 数据填充
						dataBind();
						//注册表单验证
						$(validform());
					}
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
			$("#username").val(ruleForm.username);
			$("#content-input").val(ruleForm.content);
			$("#reply-input").val(ruleForm.reply);
		}

		// 用户登出
        <%@include file = "../../static/logout.jsp" %>
			$(document).ready(function () {
				setMenu();
				getDetails();
				$('#submitBtn').on('click', function (e) {
					e.preventDefault();
					//console.log("点击了...提交按钮");
					submit();
				});
			<%@include file = "../../static/myInfo.js" %>		
		});

	</script>
</body>

</html>