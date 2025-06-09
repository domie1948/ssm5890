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
										<div class="breadcome-heading"></div>
									</div>
									<div class="col-lg-6">
										<ul class="breadcome-menu">
											<li><a href="${pageContext.request.contextPath}/index.jsp">主页</a> <span
													class="bread-slash">/</span></li>
											<li><span class="bread-blod">订单管理</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Breadcome End-->
			<!-- Mobile Menu start -->
			<!-- Mobile Menu end -->
			<!-- Breadcome start-->

			<!-- Breadcome End-->
			<!-- Static Table Start -->
			<div class="data-table-area mg-b-15">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12">
							<div class="sparkline13-list shadow-reset">
								<div class="sparkline13-hd">
									<div class="main-sparkline13-hd">
										<h1>
											已取消订单<span class="table-project-n">列表</span>
										</h1>
										<div class="sparkline13-outline-icon">
											<span class="sparkline13-collapse-link"><i
													class="fa fa-chevron-up"></i></span> <span><i
													class="fa fa-wrench"></i></span> <span
												class="sparkline13-collapse-close"><i class="fa fa-times"></i></span>
										</div>
									</div>
								</div>

								<div class="sparkline13-graph">
									<div class="datatable-dashv1-list custom-datatable-overright">
										<button type="button" class="btn btn-custon-four btn-primary btn-sm"
											onclick="search()">查询</button>
										<button type="button" class="btn btn-custon-four btn-danger btn-sm 删除"
											onclick="deleteMore()">删除</button>
										<table id="table" data-toggle="table" data-resizable="true">
											<thead>
												<tr>
													<th><input type="checkbox" onclick="chooseAll()"></th>
													<th><i id="orderidIcon" onclick="sort('orderid')" class="fa fa-sort"
															aria-hidden="true"></i>订单id</th>
													<th><i id="useridIcon" onclick="sort('userid')" class="fa fa-sort"
															aria-hidden="true"></i>用户id</th>
													<th><i id="goodidIcon" onclick="sort('goodid')" class="fa fa-sort"
															aria-hidden="true"></i>商品id</th>
													<th><i id="goodnameIcon" onclick="sort('goodname')"
															class="fa fa-sort" aria-hidden="true"></i>商品名称</th>
													<th><i id="pictureIcon" onclick="sort('picture')" class="fa fa-sort"
															aria-hidden="true"></i>商品图片</th>
													<th><i id="buynumberIcon" onclick="sort('buynumber')"
															class="fa fa-sort" aria-hidden="true"></i>购买数量</th>
													<th><i id="priceIcon" onclick="sort('price')" class="fa fa-sort"
															aria-hidden="true"></i>价格/积分</th>
													<th><i id="discountpriceIcon" onclick="sort('discountprice')"
															class="fa fa-sort" aria-hidden="true"></i>折扣价格</th>
													<th><i id="totalIcon" onclick="sort('total')" class="fa fa-sort"
															aria-hidden="true"></i>总价格/总积分</th>
													<th><i id="discounttotalIcon" onclick="sort('discounttotal')"
															class="fa fa-sort" aria-hidden="true"></i>折扣总价格</th>
													<th><i id="typeIcon" onclick="sort('type')" class="fa fa-sort"
															aria-hidden="true"></i>支付类型</th>
													<th><i id="statusIcon" onclick="sort('status')" class="fa fa-sort"
															aria-hidden="true"></i>状态</th>
													<th><i id="addressIcon" onclick="sort('address')" class="fa fa-sort"
															aria-hidden="true"></i>地址</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>

											</tbody>
										</table>
									</div>
									<div class="fixed-table-pagination">
										<div class="pull-left pagination-detail">
											<span class="pagination-info">当前第 1 页，共 1 页</span> <span class="page-list">
												<span class="btn-group dropup">
													<button type="button" class="btn btn-default dropdown-toggle"
														data-toggle="dropdown">
														<span class="page-size">10</span> <span class="caret"></span>
													</button>
													<ul class="dropdown-menu" role="menu">
														<li role="menuitem" class="active"><a
																onclick="changePageSize(10)" href="#">10</a></li>
														<li role="menuitem"><a onclick="changePageSize(25)"
																href="#">25</a></li>
														<li role="menuitem"><a onclick="changePageSize(50)"
																href="#">50</a></li>
														<li role="menuitem"><a onclick="changePageSize(100)"
																href="#">100</a></li>
													</ul>
												</span> 条 每页
											</span>
										</div>
										<div class="pull-right pagination">
											<ul class="pagination">
												<li id="page-pre" class="page-pre"><a href="#"
														onclick="pageNumChange('pre')">‹</a></li>
												<li id="page-next" class="page-next"><a href="#"
														onclick="pageNumChange('next')">›</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- Static Table End -->
		</div>
	</div>
	<!-- Footer Start-->
	<!-- Footer End-->
	<!-- Chat Box Start-->
	<!-- Chat Box End-->
	<%@ include file="../../static/foot.jsp"%>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
	<script>

	<%@include file = "../../utils/menu.jsp" %>
		
	<%@include file = "../../static/setMenu.js" %>
		
	<%@include file = "../../utils/baseUrl.jsp" %>
		
	<%@include file = "../../static/getRoleButtons.js" %>
		
	<%@include file = "../../static/crossBtnControl.js" %>
		var tableName = "yiquxiaodingdan";
		var pageType = "list";
		var searchForm = {
			key: ""
		};
		var pageIndex = 1;
		var pageSize = 10;
		var totalPage = 0;
		var dataList = [];
		var sortColumn = '';
		var sortOrder = '';
		var ids = [];
		var checkAll = false;

		function init() {
			// 满足条件渲染提醒接口
		}

		// 改变每页记录条数
		function changePageSize(num) {
			$('.page-size').html(num);
			pageSize = num;
			getDataList();
		}
		//排序
		function sort(columnName) {
			var iconId = '#' + columnName + 'Icon'
			$('th i').attr('class', 'fa fa-sort');
			if (sortColumn == '' || sortColumn != columnName) {
				sortColumn = columnName;
				sortOrder = 'asc';
				$(iconId).attr('class', 'fa fa-sort-asc');
			}
			if (sortColumn == columnName) {
				if (sortOrder == 'asc') {
					sortOrder = 'desc';
					$(iconId).attr('class', 'fa fa-sort-desc');
				} else {
					sortOrder = 'asc';
					$(iconId).attr('class', 'fa fa-sort-asc');
				}
			}
			pageIndex = 1;
			getDataList();
		}

		// 查询
		function search() {
			searchForm = {
				key: ""
			};
			getDataList();
		}
		// 获取数据列表
		function getDataList() {
			$.ajax({
				type: "GET",
				url: baseUrl + "orders/page",
				data: {
					page: pageIndex,
					limit: pageSize,
					sort: sortColumn,
					order: sortOrder,
					status: "已取消",
				},
				beforeSend: function (xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
						.getItem('token'));
				},
				success: function (res) {
					clear();
					if (res.code == 0) {
						dataList = res.data.list;
						totalPage = res.data.totalPage;
						//var tbody = document.getElementById('tbMain');
						for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
							var trow = setDataRow(dataList[i]); //定义一个方法,返回tr数据 
							$('tbody').append(trow);
						}
						pagination(); //渲染翻页组件
						getRoleButtons(); //删除没有权限的按钮
					} else if (res.code == 401) {
	<%@include file = "../../static/toLogin.jsp" %>
		} else {
						alert(res.msg);
						dataList = [];
						totalPage = 0;
					}
				},
			});
		}
		// 渲染表格数据
		function setDataRow(item) {
			//创建行 
			var row = document.createElement('tr');
			row.setAttribute('class', 'useOnce');
			// 创建 勾选框 列
			var checkbox = document.createElement('td');
			checkbox.innerHTML = "<input type='checkbox' name='chk' value=" + item.id + ">";
			row.appendChild(checkbox);

			var orderidCell = document.createElement('td');

			orderidCell.innerHTML = item.orderid;

			row.appendChild(orderidCell);

			var useridCell = document.createElement('td');

			useridCell.innerHTML = item.userid;

			row.appendChild(useridCell);

			var goodidCell = document.createElement('td');

			goodidCell.innerHTML = item.goodid;

			row.appendChild(goodidCell);

			var goodnameCell = document.createElement('td');

			goodnameCell.innerHTML = item.goodname;

			row.appendChild(goodnameCell);

			var pictureCell = document.createElement('td');
			var img = document.createElement('img');
			img.setAttribute('src', item.picture);
			img.setAttribute('height', 100);
			img.setAttribute('width', 100);
			pictureCell.appendChild(img);
			row.appendChild(pictureCell);

			var buynumberCell = document.createElement('td');

			buynumberCell.innerHTML = item.buynumber;

			row.appendChild(buynumberCell);

			var priceCell = document.createElement('td');

			priceCell.innerHTML = item.price;

			row.appendChild(priceCell);

			var discountpriceCell = document.createElement('td');

			discountpriceCell.innerHTML = item.discountprice;

			row.appendChild(discountpriceCell);

			var totalCell = document.createElement('td');

			totalCell.innerHTML = item.total;

			row.appendChild(totalCell);

			var discounttotalCell = document.createElement('td');

			discounttotalCell.innerHTML = item.discounttotal;

			row.appendChild(discounttotalCell);

			var typeCell = document.createElement('td');
			if (item.type == 1) {
				typeCell.innerHTML = '现金';
			} else if (item.type == 2) {
				typeCell.innerHTML = '积分';
			}
			row.appendChild(typeCell);

			var statusCell = document.createElement('td');

			statusCell.innerHTML = item.status;

			row.appendChild(statusCell);

			var addressCell = document.createElement('td');
			if (item.address.length >= 10) {
				addressCell.innerHTML = item.address.substring(0, 9);
			} else {
				addressCell.innerHTML = item.address;
			}
			row.appendChild(addressCell);

			// 每行 按钮
			var btnGroup = document.createElement('td');

			//删除按钮
			var deleteBtn = document.createElement('button');
			var deleteAttr = 'remove(' + item.id + ')';
			deleteBtn.setAttribute('onclick', deleteAttr);
			deleteBtn.setAttribute("type", "button");
			deleteBtn.setAttribute("class",
				"btn btn-custon-four btn-danger btn-sm 删除");
			deleteBtn.innerHTML = "删除";
			btnGroup.appendChild(deleteBtn);
			row.appendChild(btnGroup);
			return row;
		}
		// 翻页
		function pageNumChange(val) {
			if (val == 'pre') {
				pageIndex--;
			} else if (val == 'next') {
				pageIndex++;
			} else {
				pageIndex = val;
			}
			getDataList();
		}
		// 下载
		function download(fileName) {
			var url = baseUrl + 'file/download?fileName=' + fileName;
			window.open(url);
		}
		// 打开新窗口播放媒体
		function mediaPlay(url) {
			//var url = baseUrl + "upload/" + fileName;
			window.open(url);
		}
		// 渲染翻页组件
		function pagination() {
			var beginIndex = pageIndex;
			var endIndex = pageIndex;
			var point = 4;
			//计算页码
			for (var i = 0; i < 3; i++) {
				if (endIndex == totalPage) {
					break;
				}
				endIndex++;
				point--;
			}
			for (var i = 0; i < 3; i++) {
				if (beginIndex == 1) {
					break;
				}
				beginIndex--;
				point--;
			}
			if (point > 0) {
				while (point > 0) {
					if (endIndex == totalPage) {
						break;
					}
					endIndex++;
					point--;
				}
				while (point > 0) {
					if (beginIndex == 1) {
						break;
					}
					beginIndex--;
					point--
				}
			}
			// 是否显示 前一页 按钮
			if (pageIndex > 1) {
				$('#page-pre').show();
			} else {
				$('#page-pre').hide();
			}
			// 渲染页码按钮
			for (var i = beginIndex; i <= endIndex; i++) {
				var pageNum = document.createElement('li');
				pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
				if (pageIndex == i) {
					pageNum.setAttribute('class', 'page-number active useOnce');
				} else {
					pageNum.setAttribute('class', 'page-number useOnce');
				}
				var pageHref = document.createElement('a');
				pageHref.setAttribute('href', '#');
				pageHref.innerHTML = i;
				pageNum.appendChild(pageHref);
				$("#page-next").before(pageNum);
			}
			// 是否显示 下一页 按钮
			if (pageIndex < totalPage) {
				$('#page-next').show();
			} else {
				$('#page-next').hide();
			}
			var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
			$('.pagination-info').html(pageNumInfo);
		}
		// 跳转到指定页
		function toThatPage() {
			//var index = document.getElementById('pageIndexInput').value;
			if (index < 0 || index > totalPage) {
				alert('请输入正确的页码');
			} else {
				pageNumChange(index);
			}
		}
		// 全选/全不选
		function chooseAll() {
			checkAll = !checkAll;
			var boxs = document.getElementsByName("chk");
			for (var i = 0; i < boxs.length; i++) {
				boxs[i].checked = checkAll;
			}
		}

		// 批量删除
		function deleteMore() {
			ids = []
			var boxs = document.getElementsByName("chk");
			for (var i = 0; i < boxs.length; i++) {
				if (boxs[i].checked) {
					ids.push(boxs[i].value)
				}
			}
			if (ids.length == 0) {
				alert('请勾选要删除的记录');
			} else {
				remove(ids);
			}
		}
		// 删除
		function remove(id) {
			var mymessage = confirm("真的要删除吗？");
			if (mymessage == true) {
				var paramArray = [];
				if (id.length > 1) {
					paramArray = id;
				} else {
					paramArray.push(id);
				}
				$.ajax({
					type: "POST",
					url: baseUrl + "orders/delete",
					contentType: "application/json",
					data: JSON.stringify(paramArray),
					beforeSend: function (xhr) {
						xhr.setRequestHeader("token", window.sessionStorage
							.getItem('token'));
					},
					success: function (res) {
						if (res.code == 0) {
							alert('删除成功');
							getDataList();
						} else if (res.code == 401) {
	<%@include file = "../../static/toLogin.jsp" %>
		} else {
							alert(res.msg);
						}
					},
				});
			} else {
				alert("已取消操作");
			}
		}
		// 用户登出
	<%@include file = "../../static/logout.jsp" %>
			//修改
			function edit(id) {
				window.sessionStorage.setItem('id', id)
				window.location.href = "add-or-update.jsp"
			}
		//清除会重复渲染的节点
		function clear() {
			var elements = document.getElementsByClassName('useOnce');
			for (var i = elements.length - 1; i >= 0; i--) {
				elements[i].parentNode.removeChild(elements[i]);
			}
		}
		//添加
		function add() {
			window.location.href = "add-or-update.jsp"
		}
		//单列求和
		function getSum(colName) {
			$.ajax({
				type: "GET",
				url: baseUrl + "orders" + colName,
				data: {
					tableName: "orders",
					columnName: colName
				},
				beforeSend: function (xhr) {
					xhr.setRequestHeader("token", window.sessionStorage
						.getItem('token'));
				},
				success: function (res) {
					if (res.code == 0) {
						return res.data.sum;
					} else if (res.code == 401) {
	<%@include file = "../../static/toLogin.jsp" %>
		} else {
						alert(res.msg);
					}
				},
			});
		}

		// 查看详情
		function detail(id) {
			window.sessionStorage.setItem("id", id);
			//window.sessionStorage.setItem("ifView", true);
			window.location.href = "info.jsp";
		}
		function crossTable(id) {
			window.sessionStorage.setItem('crossTableId', id);
			window.sessionStorage.setItem('crossTableName', "orders");
			var url = "../ $crossOptTableName/add-or-update.jsp";
			window.location.href = url;
		}

		$(document).ready(function () {
			$('.no-records-found').hide()
			setMenu();
			init();
			getDataList();
	<%@include file = "../../static/myInfo.js" %>
		});
	</script>

</body>

</html>