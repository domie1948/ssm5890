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
                                            <li><span class="bread-blod">球星介绍</span>
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
                                        <h1>球星介绍 编辑</h1>
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
                                                        <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">名字</label>    
                                                                                                                                </div>
                                                                <div class="col-lg-2">
                                                                <input id="mingzi" name="mingzi" class="form-control" placeholder="名字">
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">性别</label>    
                                                                                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <div class="form-select-list">
                                                                        <select id="xingbieSelect" name="xingbie" class="form-control custom-select-value">
                                                                                                                                                            <option name="xingbieOption" value="未选择"></option>
                                                                                                                                                                                                                                                    <option class="xingbieOption" value="男">
                                                                                        男
                                                                                    </option>
                                                                                                                                                                    <option class="xingbieOption" value="女">
                                                                                        女
                                                                                    </option>
                                                                                                                                                                                                                                    </select>    
                                                                    </div>   
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">出生日期</label>    
                                                                                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <div id="chushengriqiDate" class="col-lg-2 input-append date form_datetime" style="padding-left: 0;">
                                                                        <input id="chushengriqi-input" name="chushengriqi" size="10" type="text" readonly>
                                                                        <span class="add-on"><i class="icon-remove"></i></span>
                                                                        <span class="add-on"><i class="icon-calendar"></i></span>
                                                                    </div>
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                </div>
                                                                <div class="col-lg-2">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                </div>
                                                                <div class="col-lg-2">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                </div>
                                                                <div class="col-lg-2">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                </div>
                                                                <div class="col-lg-2">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">照片</label>    
                                                                                                                                </div>
                                                                <div class="col-lg-2">
                                                                    <img id="zhaopianImg" src="" width="100" height="100">
                                                                    <input name="file" type="file" id="zhaopianupload" class="form-control-file">
                                                                    <label id="zhaopianFileName">{{ruleForm.zhaopian}}</label>
                                                                    <input name="zhaopian" id="zhaopian-input" type="hidden">  
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                                        
                                                                                                                                                                                                                                                                    
													                                                                                                                                                                                                                
													                                                                                                                                                                                                                
																											<div class="form-group">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">发展历程</label>
																</div>	
																<div class="col-lg-9">
																	<input id="fazhanlichengupload" name="file" type="file">
																	<script id="fazhanlichengEditor" type="text/plain" style="width:650px;height:230px;"></script>
																	<script type="text/javascript">
																		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
																	//相见文档配置属于你自己的编译器
																	var fazhanlichengUe = UE.getEditor('fazhanlichengEditor', {
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
																	<input type="hidden" name="fazhanlicheng" id="fazhanlicheng-input">
																</div>	
															</div>	
														</div>
                                                                                                                                                                                                                                                                    
																											<div class="form-group">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">家庭背景</label>
																</div>	
																<div class="col-lg-9">
																	<input id="jiatingbeijingupload" name="file" type="file">
																	<script id="jiatingbeijingEditor" type="text/plain" style="width:650px;height:230px;"></script>
																	<script type="text/javascript">
																		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
																	//相见文档配置属于你自己的编译器
																	var jiatingbeijingUe = UE.getEditor('jiatingbeijingEditor', {
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
																	<input type="hidden" name="jiatingbeijing" id="jiatingbeijing-input">
																</div>	
															</div>	
														</div>
                                                                                                                                                                                                                                                                    
																											<div class="form-group">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">重大事件</label>
																</div>	
																<div class="col-lg-9">
																	<input id="zhongdashijianupload" name="file" type="file">
																	<script id="zhongdashijianEditor" type="text/plain" style="width:650px;height:230px;"></script>
																	<script type="text/javascript">
																		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
																	//相见文档配置属于你自己的编译器
																	var zhongdashijianUe = UE.getEditor('zhongdashijianEditor', {
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
																	<input type="hidden" name="zhongdashijian" id="zhongdashijian-input">
																</div>	
															</div>	
														</div>
                                                                                                                                                                                                                                                                    
																											<div class="form-group">
															<div class="row">
																<div class="col-lg-3">
																	<label class="login2 pull-right pull-right-pro">获奖</label>
																</div>	
																<div class="col-lg-9">
																	<input id="huojiangupload" name="file" type="file">
																	<script id="huojiangEditor" type="text/plain" style="width:650px;height:230px;"></script>
																	<script type="text/javascript">
																		//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
																	//相见文档配置属于你自己的编译器
																	var huojiangUe = UE.getEditor('huojiangEditor', {
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
																	<input type="hidden" name="huojiang" id="huojiang-input">
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

        var tableName = "qiuxingjieshao";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};
																																												
					      				      				      				      				      				      				      				      	
																																										        var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					http("qiuxingjieshao/info/" + id,"GET",{},(res)=>{
						if(res.code == 0){
							vm.ruleForm = res.data;
						}
					});
				}
			},
			methods: { }
	  	});
		// 文件上传
		function upload(){
																																	$('#fazhanlichengupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('fazhanlichengEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560 >');					
						}
					});
																$('#jiatingbeijingupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('jiatingbeijingEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560 >');					
						}
					});
																$('#zhongdashijianupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('zhongdashijianEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560 >');					
						}
					});
																$('#huojiangupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {	
							UE.getEditor('huojiangEditor').execCommand('insertHtml','<img src=\"'+ baseUrl +'upload/'+ data.result.file + '\" width=900 height=560 >');					
						}
					});
																$('#zhaopianupload').fileupload({
						url: baseUrl + 'file/upload',
						headers:{ token: window.sessionStorage.getItem("token")},
						dataType: 'json',
						done: function (e, data) {
							document.getElementById('zhaopian-input').setAttribute('value',baseUrl+"upload/"+data.result.file);
							if(document.getElementById('zhaopianFileName') != null){
								document.getElementById('zhaopianFileName').innerHTML = data.result.file +"";
							}						
							$("#zhaopianImg").attr("src",baseUrl+"upload/"+data.result.file);
							
							
						}
					});
									}  
		// 表单提交
		function submit() {
			if(validform() ==true && compare() == true){
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
				let flag = true;
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{
					
					urlParam = 'save';
					successMes = '添加成功';
				}
				httpJson("qiuxingjieshao/"+urlParam,"POST",data,(res)=>{
					if(res.code == 0){
						window.sessionStorage.removeItem('id');
																																																																																																																				if(flag){
							alert(successMes);
						}
						if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
							window.sessionStorage.removeItem('onlyme');
							window.location.href="${pageContext.request.contextPath}/index.jsp";
						}else{
							window.location.href="list.jsp";
						}
					}
				});
			}else{
				alert("表单未填完整或有错误");
			}
		}
		// 填充富文本框
		function setContent(){
																												if(ruleForm.fazhanlicheng != null && ruleForm.fazhanlicheng != 'null' && ruleForm.fazhanlicheng != ''){
						var fazhanlichengMes = '' + ruleForm.fazhanlicheng;
						var fazhanlichengUeditor = UE.getEditor('fazhanlichengEditor');
						fazhanlichengUeditor.ready(function() {
							fazhanlichengUeditor.setContent(fazhanlichengMes);
						});
				}	
													if(ruleForm.jiatingbeijing != null && ruleForm.jiatingbeijing != 'null' && ruleForm.jiatingbeijing != ''){
						var jiatingbeijingMes = '' + ruleForm.jiatingbeijing;
						var jiatingbeijingUeditor = UE.getEditor('jiatingbeijingEditor');
						jiatingbeijingUeditor.ready(function() {
							jiatingbeijingUeditor.setContent(jiatingbeijingMes);
						});
				}	
													if(ruleForm.zhongdashijian != null && ruleForm.zhongdashijian != 'null' && ruleForm.zhongdashijian != ''){
						var zhongdashijianMes = '' + ruleForm.zhongdashijian;
						var zhongdashijianUeditor = UE.getEditor('zhongdashijianEditor');
						zhongdashijianUeditor.ready(function() {
							zhongdashijianUeditor.setContent(zhongdashijianMes);
						});
				}	
													if(ruleForm.huojiang != null && ruleForm.huojiang != 'null' && ruleForm.huojiang != ''){
						var huojiangMes = '' + ruleForm.huojiang;
						var huojiangUeditor = UE.getEditor('huojiangEditor');
						huojiangUeditor.ready(function() {
							huojiangUeditor.setContent(huojiangMes);
						});
				}	
														}  
		// 获取富文本框内容
		function getContent(){
																												if(UE.getEditor('fazhanlichengEditor').hasContents()){
					$('#fazhanlicheng-input').attr('value',UE.getEditor('fazhanlichengEditor').getPlainTxt());
				}	
													if(UE.getEditor('jiatingbeijingEditor').hasContents()){
					$('#jiatingbeijing-input').attr('value',UE.getEditor('jiatingbeijingEditor').getPlainTxt());
				}	
													if(UE.getEditor('zhongdashijianEditor').hasContents()){
					$('#zhongdashijian-input').attr('value',UE.getEditor('zhongdashijianEditor').getPlainTxt());
				}	
													if(UE.getEditor('huojiangEditor').hasContents()){
					$('#huojiang-input').attr('value',UE.getEditor('huojiangEditor').getPlainTxt());
				}	
														}
		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
					           				       			 	           										    xingbie: {
														},
						       			 	           										    chushengriqi: {
														},
						       			 	           										    fazhanlicheng: {
														},
						       			 	           										    jiatingbeijing: {
														},
						       			 	           										    zhongdashijian: {
														},
						       			 	           										    huojiang: {
														},
						       			 	           										    zhaopian: {
														},
						       			 					},
				messages: {
																													xingbie: {
														},
																								chushengriqi: {
														},
																								fazhanlicheng: {
														},
																								jiatingbeijing: {
														},
																								zhongdashijian: {
														},
																								huojiang: {
														},
																								zhaopian: {
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
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("qiuxingjieshao/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();							
																																																																																																																										// 富文本框回显														
						setContent();	
						//注册表单验证
						$(validform());  		
					}
				});
			}else{
																																																																												
							 		fill()
								//注册表单验证
		    	$(validform());  
			}
		}
		// 是/否 下拉框选项回显
		function setSelectOption(){
																																																													}
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
																																																														
		}
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };
																									$("#chushengriqiDate").datetimepicker({ 
					minView: "month",
					autoclose: true,
					format:'yyyy-mm-dd',
					language:'zh-CN',
				});
																																												}

																																										
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;
																																																													}
		function calculationSE(colName){
			//单列求和接口
			http("qiuxingjieshao"+colName,"GET",{
				tableName: "qiuxingjieshao",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}

		function calculationPre(){
			//进入该页面就填充"单列求和"的列
																																																													}
		
					//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
																																																																																																																				$(validform());
					}
				});
							
			}	
				
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
												$("#mingzi").val(ruleForm.mingzi);	
																var xingbieOptions = document.getElementsByClassName("xingbieOption");
					for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
						if(xingbieOptions[xingbieCount].getAttribute('value') == ruleForm.xingbie){
							xingbieOptions[xingbieCount].setAttribute('selected','selected');
						}
					}
																$("#chushengriqi-input").val(ruleForm.chushengriqi);
																$("#fazhanlicheng").val(ruleForm.fazhanlicheng);	
																$("#jiatingbeijing").val(ruleForm.jiatingbeijing);	
																$("#zhongdashijian").val(ruleForm.zhongdashijian);	
																$("#huojiang").val(ruleForm.huojiang);	
																$("#zhaopian").val(ruleForm.zhaopian);	
									}
		//图片显示
		function showImg(){
																																																													var zhaopianFileName = "\"" + ruleForm.zhaopian + "\"";
					$("#zhaopianImg").attr("src",ruleForm.zhaopian);
									}		
        //跨表

        //跨表
        function crossTable(){
            crossTableName = window.sessionStorage.getItem('crossTableName');
			crossTableId = window.sessionStorage.getItem('crossTableId');
            if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
				http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
					if(res.code == 0){
						crossRuleForm = res.data;
						$('#updateId').val(crossTableId);
												if(res.data != null && res.data != '' && res.data.mingzi != null && res.data.mingzi != ''){

															$("#mingzi").val(res.data.mingzi);
													}
												if(res.data != null && res.data != '' && res.data.xingbie != null && res.data.xingbie != ''){

															var xingbieOptions = document.getElementsByClassName("xingbieOption");
								for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
									if(xingbieOptions[xingbieCount].getAttribute('value') == res.data.xingbie){
										xingbieOptions[xingbieCount].setAttribute('selected','selected');
									}
								}
													}
												if(res.data != null && res.data != '' && res.data.chushengriqi != null && res.data.chushengriqi != ''){

															$("#chushengriqi-input").val(res.data.chushengriqi);
								$('#chushengriqiFileName').val(res.data.chushengriqi)
													}
												if(res.data != null && res.data != '' && res.data.fazhanlicheng != null && res.data.fazhanlicheng != ''){

															$("#fazhanlicheng").val(res.data.fazhanlicheng);
													}
												if(res.data != null && res.data != '' && res.data.jiatingbeijing != null && res.data.jiatingbeijing != ''){

															$("#jiatingbeijing").val(res.data.jiatingbeijing);
													}
												if(res.data != null && res.data != '' && res.data.zhongdashijian != null && res.data.zhongdashijian != ''){

															$("#zhongdashijian").val(res.data.zhongdashijian);
													}
												if(res.data != null && res.data != '' && res.data.huojiang != null && res.data.huojiang != ''){

															$("#huojiang").val(res.data.huojiang);
													}
												if(res.data != null && res.data != '' && res.data.zhaopian != null && res.data.zhaopian != ''){

															$("#zhaopianImg").attr("src",res.data.zhaopian);
								$("#zhaopian-input").val(res.data.zhaopian);
													}
											}
				});  
            }
            window.sessionStorage.removeItem('crossTableName');
			window.sessionStorage.removeItem('crossTableId');
        }
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
																																																																																																	},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
																																																														return true;
		}
				
		function readonly(){
			if(window.sessionStorage.getItem('role') != '管理员'){
				$('#jifen').attr('readonly','readonly');
				$('#money').attr('readonly','readonly');
			}
		}		

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
																																																						if(largerVal !=null && smallerVal != null){
				if(largerVal<=smallerVal){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}	


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>
		$(document).ready(function() { 
			setMenu();
			dateTimePick();
			addValidation();          
			getDetails();
			upload();
			calculationPre();
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			readonly();
		});

    </script>
</body>

</html>