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
											<li><span class="bread-blod">试题管理</span></li>
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
										<h1>试题 编辑</h1>
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
														<input id="paperId" name="paperid" type="hidden">
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">试卷</label>
																</div>
																<div class="col-lg-2">
																	<div class="form-select-list">
																		<select id="papernameSelect" name="papername"
																			onchange="setPaperId()"
																			class="form-control custom-select-value">
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">试题</label>
																</div>
																<div class="col-lg-2">
																	<textarea placeholder="试题" class="form-control"
																		id="questionname" name="questionname" rows="3"></textarea>
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">类型</label>
																</div>
																<div class="col-lg-2">
																	<div class="form-select-list">
																		<select id="typeSelect" name="type"
																			onchange="setQuestionOption()"
																			class="form-control custom-select-value">
																			<option value="">请选择类型</option>
																			<option class="typeOption" value="0">单选题</option>
																			<option class="typeOption" value="1">多选题</option>
																			<option class="typeOption" value="2">判断题</option>
																			<option class="typeOption" value="3">填空题</option>
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div id="optionsParent" class="form-group-inner" style="display: none;">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">选项</label>
																</div>
																<div class="col-lg-2">
																	<br>
																	<button type="button" id="addBtn"
																		class="btn btn-success">添加</button>
																	<button type="button" id="deleteBtn"
																		class="btn btn-warning">删除</button>
																	<input id="options-input" name="options" type="hidden">
																</div>
															</div>
														</div>
														<div id="answerParent" class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">答案</label>
																</div>
																<div class="col-lg-2">
																	<input id="answer" name="answer" class="form-control"
																		placeholder="答案">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">分数</label>
																</div>
																<div class="col-lg-2">
																	<input id="score" name="score" class="form-control"
																		type="number" placeholder="分数">
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">分析</label>
																</div>
																<div class="col-lg-2">
																	<textarea placeholder="分析" class="form-control"
																		id="analysis" name="analysis" rows="3"></textarea>
																</div>
															</div>
														</div>
														<div class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">排序</label>
																</div>
																<div class="col-lg-2">
																	<input id="sequence" name="sequence" type="number"
																		class="form-control" placeholder="数值越大，位置越靠前">
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
		var tableName = "examquestion";
		var pageType = "add-or-update";
		var updateId = "";
		var questionType = '';
		var optionCount = 4;

		var papernameOptions = [];
		var ruleForm = {};

		function papernameSelect() {
			$.ajax({
				type : "GET",
				url : baseUrl + "option/exampaper/name",
				beforeSend : function(xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
				},
				success : function(res) {
					if (res.code == 0) {
						papernameOptions = res.data;
						var nullOption = document.createElement('option');
						var papernameSelect = document
								.getElementById('papernameSelect');
						papernameSelect.appendChild(nullOption);
						for (var i = 0; i < papernameOptions.length; i++) {
							var papernameOption = document
									.createElement('option');
							papernameOption.setAttribute('name',
									'papernameOption');
							papernameOption.setAttribute('value',
									papernameOptions[i]);
							papernameOption.innerHTML = papernameOptions[i];

							if (ruleForm.papername == papernameOptions[i]) {
								papernameOption.setAttribute('selected',
										'selected');
							}
							papernameSelect.appendChild(papernameOption);
						}
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
		}

		// 表单提交
		function submit() {
			if (validform() == true) {
				if (questionType < 2) {
					setOptionJson();
				}
				let data = {};
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function(index, item) {
					data[item.name] = item.value;
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
					url : baseUrl + "examquestion/" + urlParam,
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
					questionname : {
						required : true,
					},
					leixing : {},
					xuanxiang : {},
					answer : {},
					score : {
						required : true,
					},
					analysis : {
						required : true,
					},
					sequence : {
						required : true,
					},
				},
				messages : {
					questionname : {
						required : "试题不能为空",
					},
					leixing : {},
					xuanxiang : {},
					answer : {},
					score : {
						required : "分数不能为空",
					},
					analysis : {
						required : "分析不能为空",
					},
					sequence : {
						required : "排序不能为空",
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
					url : baseUrl + "examquestion/info/" + id,
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
							papernameSelect();
						} else if (res.code == 401) {
							<%@ include file="../../static/toLogin.jsp"%>
						} else {
							alert(res.msg);
						}
					},
				});
			} else {
				papernameSelect();
				$('#answerParent').hide();
				//注册表单验证
				$(validform());
			}
		}
		// 是/否 下拉框选项回显
		function setSelectOption() {
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
			$("#paperId").val(ruleForm.paperid);
			$("#questionname").val(ruleForm.questionname);
			$("#options-input").val(ruleForm.options);
			$("#score").val(ruleForm.score);
			$("#analysis").val(ruleForm.analysis);
			$("#sequence").val(ruleForm.sequence);
			
			//类型下拉框回显
			var typeOptions = document.getElementsByClassName('typeOption')
			for(var i=0;i<typeOptions.length;i++){
				if(typeOptions[i].value == ruleForm.type){
					typeOptions[i].selected = true
				}
			}
			
			//选择题选项回显
			if(ruleForm.type < 2){
				setOptions();
			}
			
			if(ruleForm.type != 2){
				if(questionType == 3){
					// 重新渲染答案输入框
					$('#answerParent .row .col-lg-2').children().remove();
					$('#answerParent .row .col-lg-2').append("<input id=\"answer\" name=\"answer\" class=\"form-control\" placeholder=\"答案\">");
					//展示填空输入框
					$('#answerParent').show()
				}
				$('#answer').val(ruleForm.answer)
			}else{
				//隐藏选项框
				$('#optionsParent').hide();
				// 重新渲染答案输入框
				$('#answerParent .row .col-lg-2').children().remove();
				$('#answerParent .row .col-lg-2').append("<div class=\"form-select-list\"><select id=\"answer\" name=\"answer\" class=\"form-control custom-select-value\"><option class=\"answerOption\" value=\"A\">A.对</option><option class=\"answerOption\" value=\"B\">B.错</option></select></div>");
				$('#answerParent').show()
				var answerOptions = document.getElementsByClassName('answerOption')
				for(var i=0;i<answerOptions.length;i++){
					if(answerOptions[i].value == ruleForm.answer){
						answerOptions[i].selected = true
					}
				}
			}
		}

		function setQuestionOption(){					
			var index = document.getElementById("typeSelect").selectedIndex
			var options = document.getElementById("typeSelect").options
			//设置题目类型	
			questionType = options[index].value
			
			// 选择题至少有两项
			if(questionType == 0 || questionType == 1){
				optionCount = 0;
				//展示选项框
				$('#optionsParent').show()
				// 清除旧的选项
				$('#optionsParent .row .col-lg-2').children().remove();
				$('#optionsParent .row .col-lg-2').append("<br>");
				$('#optionsParent .row .col-lg-2').append("<button id=\"addBtn\" onclick=\"addOption()\" class=\"btn btn-success\">添加</button>")		
				$('#optionsParent .row .col-lg-2').append("<button id=\"deleteBtn\" onclick=\"deleteOption()\" class=\"btn btn-warning\">删除</button>")
				$('#optionsParent .row .col-lg-2').append("<input id=\"options-input\" name=\"options\" type=\"hidden\">")
				$('#addBtn').before("<label id=\"labelA\">A. </label><input id=\"optionA\" class=\"option\" type=\"text\"><br>")
				$('#addBtn').before("<label id=\"labelB\">B. </label><input id=\"optionB\" class=\"option\" type=\"text\"><br>")
				$('#addBtn').before("<label id=\"labelC\">C. </label><input id=\"optionC\" class=\"option\" type=\"text\"><br>")
				$('#addBtn').before("<label id=\"labelD\">D. </label><input id=\"optionD\" class=\"option\" type=\"text\"><br>")
				//重新渲染答案表单项
				$('#answerParent .row .col-lg-2').children().remove()
				$('#answerParent .row .col-lg-2').append("<input id=\"answer\" name=\"answer\" type=\"text\" class=\"form-control\" placeholder=\"多选用逗号隔开\">")
				$('#answerParent input').attr('maxlength',questionType*6+1)
				$('#answerParent').show()
				//隐藏添加按钮
				$("#addBtn").hide()
			}else if(questionType == 2){
				//隐藏选项框
				$('#optionsParent').hide();
				$("#options-input").val("[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]");			
				// 重新渲染答案输入框
				$('#answerParent .row .col-lg-2').children().remove()
				$('#answerParent .row .col-lg-2').append("<div class=\"form-select-list\"><select id=\"answer\" name=\"answer\" class=\"form-control\"><option class=\"answerOption\" value=\"A\">A.对</option><option class=\"answerOption\" value=\"B\">B.错</option></select></div>");	
				$('#answerParent').show()
			}else if(questionType == 3){
				//隐藏选项框
				$('#optionsParent').hide();
				//选项留空
				$('#options-input').val("[]")		
				// 重新渲染答案输入框
				$('#answerParent .row .col-lg-2').children().remove();
				$('#answerParent .row .col-lg-2').append("<textarea id=\"answer\" name=\"answer\" class=\"form-control\" rows=\"3\" placeholder=\"答案\"></textarea>");
				//展示填空输入框
				$('#answerParent').show();
			}
			
		}
		//添加选择题选项
		function addOption(){
			if(optionCount == 4){
				$('#addBtn').before("<label id=\"labelA\">A. </label><input id=\"optionA\" class=\"option\"><br>")
				optionCount--
				$('#deleteBtn').hide()
			}else if(optionCount == 3){
				$('#addBtn').before("<label id=\"labelB\">B. </label><input id=\"optionB\" class=\"option\"><br>")				
				optionCount--
				$('#deleteBtn').hide()
			}else if(optionCount == 2){
				$('#addBtn').before("<label id=\"labelC\">C. </label><input id=\"optionC\" class=\"option\"><br>")				
				optionCount--	
				$('#deleteBtn').show()
			}else if(optionCount == 1){
				$('#addBtn').before("<label id=\"labelD\">D. </label><input id=\"optionD\" class=\"option\"><br>")
				optionCount--
				$('#addBtn').hide()
				$('#deleteBtn').show()
			}	
		}
		// 删除选择题选项
		function deleteOption(){
			var options = document.getElementsByClassName('option')
			var inputId = '#' + options[options.length-1].getAttribute("id")
				
			$(inputId).prev().remove()
			$(inputId).next().remove()
			$(inputId).remove()
					
			optionCount++
			if(optionCount != 0){
				$('#addBtn').show()
			}
			// 如果只剩两个选项就不给删除
			if(options.length <= 2){
				$('#deleteBtn').hide()
			}
		}
		// 设置选项json串
		function setOptionJson(){			
			if(questionType == 0 || questionType == 1){
				var str = "["
				var options = document.getElementsByClassName('option')
				for(var i=0;i<options.length;i++){
					var id =  'option' + String.fromCharCode(65+i);
					if($('#'+id).val() ==null || $('#'+id).val() == '' || $('#'+id).val().trim() == ''){
						alert('还有选项没填!')
						return false
					}else{
						str = str + "{\"text\":\"" +  $('#'+id).val() + "\",\"code\":\"" + String.fromCharCode(65+i) + "\"}"
						if(i != options.length-1){
							str = str + ","
						}else{
							str = str + "]"
						}		
					}													
				}
				$('#options-input').val(str)
			}			
			return true
		}
		//设置paperid
		function setPaperId(){
			var index = document.getElementById("papernameSelect").selectedIndex;
		    var options = document.getElementById("papernameSelect").options;
			$.ajax({
				type : "GET",
				url : baseUrl + "exampaper/page",
				data : {name : options[index].value },
				beforeSend : function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
				success : function(res) {
					if (res.code == 0) {
						$('#paperId').val(res.data.list[0].id);
					} else if (res.code == 401) {
						<%@ include file="../../static/toLogin.jsp"%>
					} else {
						alert(res.msg);
					}
				},
			});
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