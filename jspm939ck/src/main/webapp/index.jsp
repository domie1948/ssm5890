<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="jsp/static/head.jsp"%>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
</head>

<body class="materialdesign">
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- Header top area start-->
    <div class="wrapper-pro">
		<%@ include file="jsp/static/sidebar.jsp"%>
        <!-- Header top area start-->
        <div class="content-inner-all">
			<%@ include file="jsp/static/headerTop.jsp"%>
            <!-- Header top area end-->
            <!-- Breadcome start-->
     		<h3 id="welcome" align="center" style="line-height: 500px;">欢迎登录xx系统</h3>
            <!-- Breadcome End-->
            <!-- Mobile Menu start -->
            <!-- Mobile Menu end -->
            <!-- Breadcome start-->

            <!-- Breadcome End-->
            <!-- Static Table Start -->
         
            <!-- Static Table End -->
        </div>
    </div>
    <!-- Footer Start-->

    <!-- Footer End-->
    <!-- Chat Box Start-->
    <!-- Chat Box End-->

	<%@ include file="jsp/static/foot.jsp"%>
    <script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.js"></script>
    <script>
        <%@ include file="jsp/utils/menu.jsp"%>
		<%@ include file="jsp/static/setMenu.js"%>
		<%@ include file="jsp/utils/baseUrl.jsp"%>

		// 用户登出
        <%@ include file="jsp/static/logout.jsp"%>

     	$(document).ready(function() { 	
            //我的后台,session信息转移
            if(window.localStorage.getItem("Token") != null && window.localStorage.getItem("Token") != 'null'){
                if(window.sessionStorage.getItem("token") == null || window.sessionStorage.getItem("token") == 'null'){
                    window.sessionStorage.setItem("token",window.localStorage.getItem("Token"));
                    window.sessionStorage.setItem("role",window.localStorage.getItem("role"));
                    window.sessionStorage.setItem("accountTableName",window.localStorage.getItem("sessionTable"));
                    window.sessionStorage.setItem("username",window.localStorage.getItem("adminName"));
                }
            }             
     		$('#welcome').html('欢迎登录'+projectName);
			setMenu();
			var token = window.sessionStorage.getItem("token");
		    if(token == "null" || token == null){
		  		alert("请登录后再操作");
		  		window.location.href = ("jsp/login.jsp");
            }
            <%@ include file="jsp/static/myInfo.js"%>
		});
    </script>

</body>

</html>
    