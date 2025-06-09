<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/echarts.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/macarons.js"></script>
	<style>
		.graph{
			margin: 10px auto;
		}
	</style>
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
                                            <li><span class="bread-blod">系统公告</span>
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
                                        <h1>系统公告统计</h1>
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
                                                <!--求和的都放同一个统计图里-->
                                                <!--<div id="main" style="width: 600px;height:400px;"></div>-->
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

    <script>
        <%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   

        var tableName = "xitonggonggao";
		var pageType = "graph";

														
		var valueArr = []
		
														
		$(document).ready(function() { 
			setMenu();
			getDetails();
			//draw();
			<%@ include file="../../static/myInfo.js"%>
		});

		function draw(){
			// 基于准备好的dom，初始化echarts实例
			var myChart = echarts.init(document.getElementById('main'),'macarons');
	
						// 指定图表的配置项和数据
			var option = {
				title: {text : '系统公告'},
				tooltip: {},
				legend: {},
				xAxis: {
									data : nameArr
								},
				yAxis: {
								},
				series: [{
					type: graphType,
					data: [
																																								]
				}]
			};
			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
			
		}
		// 需要调group的字段，一个字段一个统计图
																function getDetails(){
																										}
		// 值 字段 数据绑定
		function dataBindByValue(list){
																							}

		//按值统计
		function byVal(){
		$.ajax({ 
			type: "GET",
			url: baseUrl+"value/xitonggonggao/"+xColumnName+'/'+yColumnName,
			data:{ },
			beforeSend: function(xhr) {
				xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
			},
			success: function(res){               	
				if(res.code == 0){
					console.log(res.data)
					if(res.data != null){
						dataBindByValue(res.data);
					}
				}else if(res.code == 401){
					<%@ include file="../../static/toLogin.jsp"%>   		
				}else{
					alert(res.msg);
				}
			},
		});
		}

		function group(colName){
			$.ajax({ 
                type: "GET",
                url: baseUrl+"group/xitonggonggao/"+colName,
             	data:{	tableName: "xitonggonggao",
                    	columnName: colName
					 },
                beforeSend: function(xhr) {
                    xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));
                },
                success: function(res){               	
                	if(res.code == 0){
						console.log(res.data)
						if(res.data != null){
							groupDataBind(res.data,colName);
						}
					}else if(res.code == 401){
						<%@ include file="../../static/toLogin.jsp"%>   		
					}else{
						alert(res.msg);
					}
				},
			});
		}
		// 类字段的数据处理
		function groupDataBind(list,colName){
																											
		}
		// 用户登出
        <%@ include file="../../static/logout.jsp"%>
    </script>
</body>

</html>