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
										<div class="breadcome-heading">
											<h3 style="color: red;">剩余 00 分钟 00 秒</h3>
										</div>
									</div>
									<div class="col-lg-6">
										<ul class="breadcome-menu">
											<li onclick="exit()"><a href="#">退出</a></li>
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
										<h3>第 1 题，剩余 0 题，共 0 题</h3>
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
																		class="login2 pull-right pull-right-pro">题目</label>
																</div>
																<div class="col-lg-9">
																	<textarea class="form-control" id="questionname"
																		rows="3">
																	</textarea>
																</div>
															</div>
														</div>
														<div id="optionsArea" class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">选项</label>
																</div>
																<div class="col-lg-9">
																	<textarea class="form-control" rows="3"
																		readonly></textarea>
																</div>
															</div>
														</div>

														<div id="answerArea" class="form-group-inner">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">答案</label>
																</div>
																<div class="col-lg-9"></div>
															</div>
														</div>
														<div id="yourAnswer" class="form-group-inner"
															style="display: none;">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">你的答案</label>
																</div>
																<div class="col-lg-9">
																	<input class="form-control" readonly>
																	<label class="form-control"
																		style="color: red;">正确</label>
																</div>
															</div>
														</div>
														<div id="analysis" class="form-group-inner"
															style="display: none;">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">解析</label>
																</div>
																<div class="col-lg-9">
																	<textarea class="form-control" rows="2"
																		placeholder="解析" readonly></textarea>
																</div>
															</div>
														</div>
														<div id="result" class="form-group-inner"
															style="display: none;">
															<div class="row">
																<div class="col-lg-3">
																	<label
																		class="login2 pull-right pull-right-pro">考试成绩</label>
																</div>
																<div class="col-lg-9">
																	<input class="form-control" readonly>
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
																			<button id="nextBtn" type="button"
																				class="btn btn-sm btn-success login-submit-cs">下一题</button>
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
		var tableName = "";
		var pageType = "add-or-update";

		var updateId = "";
		var ruleForm = {};
		var questions = [];
		var current = 1;
		var total = 0;
		var paperId;
		var userId;
		var time = 0;
		var score = 0;

		// 用户登出
		<%@include file = "../../static/logout.jsp" %>
			$(document).ready(function () {
				setMenu();
				init();
				$('#submitBtn').on('click', function (e) {
					e.preventDefault();
					//console.log("点击了...提交按钮");
					submitAnswer();
				});
				$('#nextBtn').on('click', function (e) {
					e.preventDefault();
					//console.log("点击了...提交按钮");
					next();
				});
			<%@include file = "../../static/myInfo.js" %>
		});

		//初始化准备
		function init() {
			//获取试卷id
			paperId = window.sessionStorage.getItem('paperid');
			window.sessionStorage.removeItem('paperid');
			//获取当前用户id
			getUserId();
			//获取当前试卷题目
			getQuestions();
		}
		//获取当前用户id
		function getUserId() {
			var accountTableName = window.sessionStorage.getItem('accountTableName')
			$.ajax({
				type: "GET",
				url: baseUrl + accountTableName + "/session",
				beforeSend: function (xhr) { xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); },
				success: function (res) {
					if (res.code == 0) {
						//将用户id保存到全局变量中
						userId = res.data.id
						//删除旧的考试记录
						reWrite();
					}
					else if (res.code == 401) {<%@include file = "../../static/toLogin.jsp" %>}
					else { alert(res.msg); }
				},
			});
		}
		//获取当前试卷题目
		function getQuestions() {
			$.ajax({
				type: "GET",
				url: baseUrl + "examquestion/page",
				data: {
					sort: "id",
					paperid: paperId,
				},
				beforeSend: function (xhr) { xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); },
				success: function (res) {
					if (res.code == 0) {
						//将题目保存到全局变量						
						questions = res.data.list;
						total = questions.length;
						//获取时间
						getExamTime();
					} else if (res.code == 401) {<%@include file = "../../static/toLogin.jsp" %>}
					else { alert(res.msg); }
				},
			});
		}
		//渲染题目
		function showQuestion() {
			$('#nextBtn').hide();
			//更新考试进度信息
			setProgressMsg();
			//隐藏选项表单项
			$('#optionsArea').hide();
			var question = questions[current - 1];
			//将字符串转成json
			var answerOptions = $.parseJSON(question.options);
			//展示题目类型和分值
			var questionType = '';
			switch (question.type) {
				case 0:
					questionType = '(单选题';
					break;
				case 1:
					questionType = '(多选题';
					break;
				case 2:
					questionType = '(判断题';
					break;
				case 3:
					questionType = '(填空题';
					break;
				default:
					console.log('该题目类型未能识别');
			}
			$('#questionname').val(questionType + " " + question.score + " 分) " + question.questionname);
			//清空作答区域
			$('#answerArea .row .col-lg-9').children().remove()
			if (question.type == 0 || question.type == 2) {
				//单选题和判断题
				$('#answerArea .row .col-lg-9').append("<div class=\"form-select-list\"><select id=\"answerSelect\" class=\"form-control\"></select></div>");
				for (var i = 0; i < answerOptions.length; i++) {
					var option = document.createElement('option');
					option.setAttribute('class', 'answerOption');
					option.setAttribute('value', answerOptions[i].code);
					option.innerHTML = answerOptions[i].text;
					$('#answerSelect').append(option)
				}
			} else if (question.type == 1) {
				var str = ''
				for (var i = 0; i < answerOptions.length; i++) {
					str = str + answerOptions[i].code + '. ' + answerOptions[i].text + '  ';
				}
				$('#optionsArea .row .col-lg-9 textarea').val(str)
				//展示选项表单
				$('#optionsArea').show();
				//渲染答案输入框			
				$('#answerArea .row .col-lg-9').append("<input id=\"answer\" class=\"form-control\" placeholder=\"多个答案用英文逗号隔开\">")
			} else if (question.type == 3) {
				//渲染答案输入框	
				$('#answerArea .row .col-lg-9').append("<textarea id=\"answer\" class=\"form-control\" rows=\"2\" placeholder=\"请输入答案\"></textarea>");
			}
			$('#answerArea').show();
		}
		//设置题目进度文本
		function setProgressMsg() {
			var remain = total - current;
			var msg = "当前第 " + current + " 题,剩余 " + remain + " 题,共 " + total + "题.";
			$('.main-sparkline12-hd h3').html(msg)
		}
		//获取考试时间
		function getExamTime() {
			$.ajax({
				type: "GET",
				url: baseUrl + "exampaper/info/" + paperId,
				contentType: "application/json",
				beforeSend: function (xhr) { xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); },
				success: function (res) {
					if (res.code == 0) {
						//将考试时间保存到全局变量
						time = res.data.time;
						//每秒更新一次剩余时间
						self.setInterval("setTimeMsg()", 1000);
						console.log("time: " + time)
						//定时结束考试
						setTimeout(function () { examFinish() }, time * 1000);
						//渲染题目
						showQuestion();
					} else if (res.code == 401) {
						<%@include file = "../../static/toLogin.jsp" %>
					} else {
						alert(res.msg)
					}
				},
			});
		}
		//设置时间信息
		function setTimeMsg() {
			if (time > 0) {
				time--;
				var min = parseInt(time / 60);
				var second = time % 60;
				var str = "剩余 " + min + " 分钟, " + second + " 秒";
				$('.breadcome-heading h3').html(str);
			} else {
				$('.breadcome-heading h3').html('考试结束');
			}
		}
		//提交当前题目答案
		function submitAnswer() {
			var question = questions[current - 1];
			var answerStr = '';
			var myScore = 0;
			if (question.type == 0 || question.type == 2) {
				var index = document.getElementById("answerSelect").selectedIndex;
				var answerOptions = document.getElementById("answerSelect").options;
				answerStr = answerOptions[index].value
			} else {
				answerStr = $('#answer').val();
			}
			if (answerStr == question.answer) {
				myScore = question.score;
			}

			$.ajax({
				type: "POST",
				url: baseUrl + "examrecord/save",
				contentType: "application/json",
				data: JSON.stringify({
					analysis: question.analysis,
					answer: question.answer,
					myanswer: answerStr,
					myscore: myScore,
					options: question.options,
					paperid: paperId,
					papername: question.papername,
					questionid: question.id,
					questionname: question.questionname,
					score: question.score,
					userid: userId,
				}),
				beforeSend: function (xhr) { xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); },
				success: function (res) {
					if (res.code == 0) {
						score += myScore;
						$('#yourAnswer input').val(answerStr);
						if (answerStr == question.answer) {
							$('#yourAnswer .row .col-lg-9 label').html("正确");
						} else {
							$('#yourAnswer .row .col-lg-9 label').html("错误");
						}
						showResult();
					} else if (res.code == 401) {
						<%@include file = "../../static/toLogin.jsp" %>
					} else {
						alert(res.msg)
					}
				},

			});
		}
		//提交答案后显示结果和解析
		function showResult() {
			//隐藏选项表单项
			$('#optionsArea').hide();
			//隐藏作答区域
			$('#answerArea').hide();
			$('#analysis .row .col-lg-9 textarea').html(questions[current - 1].analysis);
			$('#yourAnswer').show();
			$('#analysis').show();
			$('#nextBtn').show();
			$('#submitBtn').hide();
			if (current == total) {
				$('#nextBtn').html("查看考试成绩");
			}
		}
		//继续下一题
		function next() {
			if (current == total) {
				examFinish();
			} else {
				$('#nextBtn').hide();
				$('#submitBtn').show();
				//隐藏答案解析
				$('#yourAnswer').hide();
				$('#analysis').hide();
				current++;
				showQuestion();
			}
		}
		//考试结束，展示成绩
		function examFinish() {
			console.log("考试结束 ");
			$('#result .row .col-lg-9 input').val(score + '分');

			$('#result').prev().prev().prev().prev().prev().hide();
			$('#result').prev().prev().prev().prev().hide();
			$('#result').prev().prev().prev().hide();
			$('#result').prev().prev().hide();
			$('#result').prev().hide();
			$('#result').show();

			$('#submitBtn').after("<button type=\"button\" class=\"btn btn-sm btn-warning login-submit-cs\" onclick=\"exit()\">退出</button>");
			$('#nextBtn').remove();
			time = 0;
		}
		//退出考试
		function exit() {
			var flag = confirm("真的要退出吗?");
			if (flag) {
				window.location.href = baseUrl + "jsp/modules/kaoshijilu/list.jsp";
			}

		}
		//重新考试，删除该份试卷之前的考试记录
		function reWrite() {
			$.ajax({
				type: "GET",
				url: baseUrl + "examrecord/deleteRecords",
				data: {
					userid: userId,
					paperid: paperId,
				},
				beforeSend: function (xhr) { xhr.setRequestHeader("token", window.sessionStorage.getItem('token')); },
				success: function (res) {
					if (res.code == 0) {

					} else if (res.code == 401) {<%@include file = "../../static/toLogin.jsp" %>}
					else {/*alert(res.msg)*/; }
				},
			});
		}		
	</script>
</body>

</html>