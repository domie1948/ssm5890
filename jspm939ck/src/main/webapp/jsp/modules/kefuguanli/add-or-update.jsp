<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red !important;
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

                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <ul class="breadcome-menu">
                                            <li><a href="${pageContext.request.contextPath}/index.jsp">主页</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">客服聊天表</span>
                                            </li>
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
                                        <h1>客服聊天表 编辑</h1>
                                        <div class="sparkline12-outline-icon">
                                            <span class="sparkline12-collapse-link"><i class="fa fa-chevron-up"></i></span>
                                            <span><i class="fa fa-wrench"></i></span>
                                            <span class="sparkline12-collapse-close"><i class="fa fa-times"></i></span>
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

														<input name="isreply" value="0" type="hidden">

														<div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">提问</label>
                                                                </div>
                                                                <div class="col-lg-9">
                                                                    <script id="askEditor" type="text/plain" style="width:650px;height:230px;"></script>
                                                                    <script type="text/javascript">
                                                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                                                    //相见文档配置属于你自己的编译器
                                                                    var askUe = UE.getEditor('askEditor', {
                                                                        toolbars: [
                                                                            [
                                                                                'undo', //撤销
                                                                                'bold', //加粗
                                                                                'redo', //重做
                                                                                'underline', //下划线
                                                                                'horizontal', //分隔线
                                                                                'inserttitle', //插入标题
                                                                                'cleardoc', //清空文档
                                                                                'fontfamily', //字体
                                                                                'fontsize', //字号
                                                                                'paragraph', //段落格式
                                                                                'inserttable', //插入表格
                                                                                'justifyleft', //居左对齐
                                                                                'justifyright', //居右对齐
                                                                                'justifycenter', //居中对
                                                                                'justifyjustify', //两端对齐
                                                                                'forecolor', //字体颜色
                                                                                'fullscreen', //全屏
                                                                                'edittip ', //编辑提示
                                                                                'customstyle', //自定义标题
                                                                                ]
                                                                            ]
                                                                        });
                                                                    </script>
												                    <input type="hidden" name="ask" id="ask-input">
                                                                </div>
                                                            </div>
                                                        </div>
														<div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">回复</label>
                                                                </div>
                                                                <div class="col-lg-9">
                                                                    <script id="replyEditor" type="text/plain" style="width:650px;height:230px;"></script>
                                                                    <script type="text/javascript">
                                                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                                                    //相见文档配置属于你自己的编译器
                                                                    var replyUe = UE.getEditor('replyEditor', {
                                                                        toolbars: [
                                                                            [
                                                                                'undo', //撤销
                                                                                'bold', //加粗
                                                                                'redo', //重做
                                                                                'underline', //下划线
                                                                                'horizontal', //分隔线
                                                                                'inserttitle', //插入标题
                                                                                'cleardoc', //清空文档
                                                                                'fontfamily', //字体
                                                                                'fontsize', //字号
                                                                                'paragraph', //段落格式
                                                                                'inserttable', //插入表格
                                                                                'justifyleft', //居左对齐
                                                                                'justifyright', //居右对齐
                                                                                'justifycenter', //居中对
                                                                                'justifyjustify', //两端对齐
                                                                                'forecolor', //字体颜色
                                                                                'fullscreen', //全屏
                                                                                'edittip ', //编辑提示
                                                                                'customstyle', //自定义标题
                                                                                ]
                                                                            ]
                                                                        });
                                                                    </script>
												                    <input type="hidden" name="reply" id="reply-input">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                    <div class="form-group-inner">
                                                            <div class="login-btn-inner">
                                                                <div class="row">
                                                                    <div class="col-lg-3"></div>
                                                                    <div class="col-lg-9">
                                                                        <div class="login-horizental cancel-wp pull-left">
                                                                            <button id="submitBtn" class="btn btn-sm btn-primary login-submit-cs" type="button">提交</button>
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
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
    
    <script>
        <%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

        var tableName = "chat";
		var pageType = "add-or-update";
		var updateId = "";

					      				      				      				      				      	
																																																									        var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "chat/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});
	
		// 表单提交
		function submit() {
			if(validform() ==true){
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				//console.log('json : ',json);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{
					
					urlParam = 'save';
					successMes = '添加成功';
				}
				$.ajax({ 
					type: "POST",
					url: baseUrl + "chat/"+urlParam,
					contentType: "application/json",
					data:json,
					beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
					success: function(res){    
						if(res.code == 0){
						window.sessionStorage.removeItem('id');
						alert(successMes);
						window.location.href="list.jsp";
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
		// 填充富文本框
		function setContent(){
				if(ruleForm.ask != null && ruleForm.ask != 'null' && ruleForm.ask != ''){
					var mes = '' + ruleForm.ask;
					var askUeditor = UE.getEditor('askEditor');
					askUeditor.ready(function() {
						askUeditor.setContent(mes);
						askUeditor.setDisabled('fullscreen');
					});
				}
				if(ruleForm.reply != null && ruleForm.reply != 'null' && ruleForm.reply != ''){
					var mes = '' + ruleForm.reply;
					var replyUeditor = UE.getEditor('replyEditor');
					replyUeditor.ready(function() {
						replyUeditor.setContent(mes);
					});
				}
		}  
		// 获取富文本框内容
		function getContent(){
																						//var askArr = [];
				//askArr.push(UE.getEditor('askEditor').getPlainTxt());
				if(UE.getEditor('askEditor').hasContents()){
					$('#ask-input').attr('value',UE.getEditor('askEditor').getPlainTxt());
				}
													//var replyArr = [];
				//replyArr.push(UE.getEditor('replyEditor').getPlainTxt());
				if(UE.getEditor('replyEditor').hasContents()){
					$('#reply-input').attr('value',UE.getEditor('replyEditor').getPlainTxt());
				}
														}
		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {},
				messages: {}
			}).form();
		}

		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				$("#submitBtn").addClass("修改");
				updateId = id;
				window.sessionStorage.removeItem('id');
				$.ajax({ 
	                type: "GET",
	                url: baseUrl + "chat/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data
							dataBind();
							setContent();			
			    		}else if(res.code ==401){
			    			 <%@ include file="../../static/toLogin.jsp"%>	
			    		}else{
							 alert(res.msg);
						}
	                },
	            });
			}else{
				$("#submitBtn").addClass("新增");
			}
		}
																									
		
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#ask-input").val(ruleForm.ask);
			$("#reply-input").val(ruleForm.reply);
		}

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