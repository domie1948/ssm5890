<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	  <script type="text/javascript" charset="utf-8">
    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>

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
                                            <li><span class="bread-blod">论坛交流</span>
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
                                        <h1>论坛交流 查看</h1>
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
                                                                                                                                    <label class="login2 pull-right pull-right-pro">帖子标题</label>    
                                                                                                                                </div>

                                                                <div class="col-lg-2">                                                           
                                                                                                                                <input id="title" name="title" class="form-control" v-model="ruleForm.title" readonly>
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
                                                                                                                                    <label class="login2 pull-right pull-right-pro">父节点id</label>    
                                                                                                                                </div>

                                                                <div class="col-lg-2">                                                           
                                                                                                                                <input id="parentid" name="parentid" class="form-control" v-model="ruleForm.parentid" readonly>
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                                                                                    <label class="login2 pull-right pull-right-pro">用户id</label>    
                                                                                                                                </div>

                                                                <div class="col-lg-2">                                                           
                                                                                                                                <input id="userid" name="userid" class="form-control" v-model="ruleForm.userid" readonly>
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                                                                                    <label class="login2 pull-right pull-right-pro">用户名</label>    
                                                                                                                                </div>

                                                                <div class="col-lg-2">                                                           
                                                                                                                                <input id="username" name="username" class="form-control" v-model="ruleForm.username" readonly>
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                                                                                    <label class="login2 pull-right pull-right-pro">状态</label>    
                                                                                                                                </div>

                                                                <div class="col-lg-2">                                                           
                                                                                                                                <input id="isdone" name="isdone" class="form-control" v-model="ruleForm.isdone" readonly>
                                                                                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                                        
                                                                                                                                                                                                                                                                                                                            <div class="form-group-inner">
                                                            <div class="row">
                                                                <div class="col-lg-3">
                                                                    <label class="login2 pull-right pull-right-pro">帖子内容</label>
                                                                </div>
                                                                <div class="col-lg-9">
                                                                    <script id="contentEditor" type="text/plain" style="width:650px;height:230px;"></script>
                                                                    <script type="text/javascript">
                                                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                                                    //相见文档配置属于你自己的编译器
                                                                    var contentUe = UE.getEditor('contentEditor', {
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
												                    <input type="hidden" name="content" id="content-input">
                                                                </div>
                                                            </div>
                                                        </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <div class="form-group-inner">
                                                            <div class="login-btn-inner">
                                                                <div class="row">
                                                                    <div class="col-lg-3"></div>
                                                                    <div class="col-lg-9">
                                                                        <div class="login-horizental cancel-wp pull-left">
                                                                            <button id="exitBtn" class="btn btn-sm btn-primary login-submit-cs" type="button">返回</button>
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
     <script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>

    <script>
        <%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

        var tableName = "forum";
		var pageType = "info";

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
		                url: baseUrl + "forum/info/" + id,
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
	
		// 填充富文本框
		function setContent(){
												                if(ruleForm.content != null && ruleForm.content != 'null' && ruleForm.content != ''){
					var mes = '' + ruleForm.content;
					var contentUeditor = UE.getEditor('contentEditor');
					contentUeditor.ready(function() {
						contentUeditor.setContent(mes);
						contentUeditor.setDisabled('fullscreen');
					});
				}           
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
	                url: baseUrl + "forum/info/" + id,
	                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
	                success: function(res){           
	                	if(res.code == 0){
	                		ruleForm = res.data					
							showImg();
							setContent();	
							setMediaUrl();		
							setDownloadBtn();		
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
	
		//图片显示
		function showImg(){
																																															}		
		function exit(){
			window.sessionStorage.removeItem("id");
			window.location.href = "list.jsp";
		}		
		// 下载
		function download(fileName){
			var url = baseUrl+'file/download?fileName='+fileName;
			window.open(url);
		}		
		//设置下载
		function setDownloadBtn(){
																																															}		
		//设置音视频播放链接
		function setMediaUrl(){
																																															}
		//打开新窗口播放媒体
		function mediaPlay(fileName){
			var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}      
		$(document).ready(function() { 
			setMenu();
			getDetails();
			$('#exitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    exit();
			});		
            <%@ include file="../../static/myInfo.js"%>
		});
        // 用户登出
        <%@ include file="../../static/logout.jsp"%>
    </script>
</body>

</html>