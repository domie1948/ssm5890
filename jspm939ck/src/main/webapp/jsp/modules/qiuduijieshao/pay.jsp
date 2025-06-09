<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
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
                                            <li><a href="#">主页</a> <span class="bread-slash">/</span>
                                            </li>
                                            <li><span class="bread-blod">支付</span>
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
                                        <h1>支付页</h1>
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
                                               <form>
                                               		 <div class="form-group-inner">
                                               		   <div class="row">
                                                                <div class="col-lg-3 col-md-9 col-sm-9 col-xs-9">
                                                                    <label class="login2 pull-right pull-right-pro"></label>
                                                                </div>
                                                                <div class="col-lg-9 col-md-3 col-sm-3 col-xs-3">
                                                                    <div class="bt-df-checkbox">
                                                                    	<div>
                                                                    		<input class="pull-left radio-checked" type="radio" value="option1" id="optionsRadios1" name="optionsRadios">
                                                                        	<img class="pull-left" src="${pageContext.request.contextPath}/resources/img/bank/微信支付.png" height="80px" width="200px">
                                                                    	</div>
                                                                        <div>
                                                                       	    <input class="radio-checked" type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
                                                                    		<img class="" src="${pageContext.request.contextPath}/resources/img/bank/支付宝支付.png" height="80px" width="200px">
                                                                        </div>
                                                                    </div>
                                                                    <div class="bt-df-checkbox">
                                                                    	<div>
                                                                    		<input class="pull-left radio-checked" type="radio" value="option1" id="optionsRadios1" name="optionsRadios">
                                                                        	<img class="pull-left" src="${pageContext.request.contextPath}/resources/img/bank/交通银行.png" height="100" width="200">
                                                                    	</div>
                                                                        <div>
                                                                       	    <input class="radio-checked" type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
                                                                    		<img class="" src="${pageContext.request.contextPath}/resources/img/bank/招商银行.png" height="100" width="200">
                                                                        </div>
                                                                    </div>
                                                                    <div class="bt-df-checkbox">
                                                                    	<div>
                                                                    		<input class="pull-left radio-checked" type="radio" value="option1" id="optionsRadios1" name="optionsRadios">
                                                                        	<img class="pull-left" src="${pageContext.request.contextPath}/resources/img/bank/中国邮政储蓄银行.png" height="100" width="200">
                                                                    	</div>
                                                                        <div>
                                                                       	    <input class="radio-checked" type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
                                                                    		<img class="" src="${pageContext.request.contextPath}/resources/img/bank/中国建设银行.png" height="100" width="200">
                                                                        </div>
                                                                    </div>
                                                                    <div class="bt-df-checkbox">
                                                                    	<div>
                                                                    		<input class="pull-left radio-checked" type="radio" value="option1" id="optionsRadios1" name="optionsRadios">
                                                                        	<img class="pull-left" src="${pageContext.request.contextPath}/resources/img/bank/中国农业银行.png" height="100" width="200">
                                                                    	</div>
                                                                        <div>
                                                                       	    <input class="radio-checked" type="radio" value="option2" id="optionsRadios2" name="optionsRadios">
                                                                    		<img class="" src="${pageContext.request.contextPath}/resources/img/bank/中国银行.png" height="100" width="200">
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group-inner">
			                                                            <div class="login-btn-inner">
			                                                                <div class="row">
			                                                                    <div class="col-lg-3"></div>
			                                                                    <div class="col-lg-9">
			                                                                        <div class="login-horizental cancel-wp pull-left">
			                                                                            <button id="submitBtn" class="btn btn-sm btn-primary login-submit-cs" type="button">支付</button>
			                                                                        </div>
			                                                                    </div>
			                                                                </div>
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
            <!-- Basic Form End-->

        </div>
    </div>
    <!-- Footer Start-->
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End-->
    <!-- Chat Box Start-->
    <!-- Chat Box End-->
	<%@ include file="../../static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.form.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>

    <script>
        <%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

        var tableName = "qiuduijieshao";
		var pageType = "pay";
		var updateId = "";

        function pay(){
            updateId = window.sessionStorage.getItem('id')
            $.ajax({ 
                type: "POST",
                url: baseUrl + "qiuduijieshao/update",
                contentType: "application/json",
                data:JSON.stringify({id: updateId, ispay: "已支付"}),
                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
                success: function(res){    
                    if(res.code == 0){
                    window.sessionStorage.removeItem('id');
                    alert('支付成功');
                    window.location.href="list.jsp";
                    }else if(res.code == 401){
                        <%@ include file="../../static/toLogin.jsp"%> 	
                    }else{
                        alert(res.msg)
                    }
                },
            });      
        }
        $(document).ready(function() { 
			setMenu();
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    pay();
			});
            <%@ include file="../../static/myInfo.js"%>
		});
        // 用户登出
        <%@ include file="../../static/logout.jsp"%>
    </script>
</body>

</html>