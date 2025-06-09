function setMenu() {
	$('#navUl').append("<li class=\"nav-item\"><a data-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-expanded=\"false\" class=\"nav-link dropdown-toggle\"><span class=\"mini-dn\">个人中心</span> <span class=\"indicator-right-menu mini-dn\"><i class=\"fa indicator-mn fa-angle-left\"></i></span></a><div class=\"dropdown-menu left-menu-dropdown animated flipInX\" role=\"menu\"><a href=" + baseUrl + "jsp/modules/center/updatePassword.jsp" + " class=\"dropdown-item\">修改密码</a><a id=\"myinfo\" href=" + baseUrl + "jsp/modules/center/info.jsp" + " class=\"dropdown-item\">个人信息</a></div></li>")
	var role = window.sessionStorage.getItem('role');
	var username = window.sessionStorage.getItem('username');
	//在右上角显示当前用户名
	if (username && username != null && username != '') {
		document.getElementById('top_username').innerHTML = username;
	}
	for (var i = 0; i < menus.length; i++) {
		// 找到当前登录角色的菜单
		if (menus[i].roleName == role) {
			var menu = menus[i].backMenu;
			for (var j = 0; j < menu.length; j++) {
				// 一级菜单
				var menuItem = document.createElement('li');
				menuItem.setAttribute('class', 'nav-item');

				var itemHref = document.createElement('a');
				itemHref.setAttribute('data-toggle', 'dropdown');
				itemHref.setAttribute('href', '#');
				itemHref.setAttribute('role', 'button');
				itemHref.setAttribute('aria-expanded', 'false');
				itemHref.setAttribute('class', 'nav-link dropdown-toggle');
				itemHref.innerHTML = "<span class=\"mini-dn\">" + menu[j].menu + "</span> <span class=\"indicator-right-menu mini-dn\"><i class=\"fa indicator-mn fa-angle-left\"></i></span>";

				menuItem.appendChild(itemHref);

				var menuChildDiv = document.createElement('div');
				menuChildDiv.setAttribute('class', 'dropdown-menu left-menu-dropdown animated flipInX');
				menuChildDiv.setAttribute('role', 'menu');

				var menuChild = menu[j].child;

				var secondMenuName = "";
				var count = 0;
				for (var k = 0; k < menuChild.length; k++) {
					// 二级菜单
					var menuChildHref = document.createElement('a');
					if (secondMenuName == menuChild[k].tableName && secondMenuName != "") {
						var childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/graph.jsp";
					} else {
						var childHrefAttr = "${pageContext.request.contextPath}/jsp/modules/" + menuChild[k].tableName + "/list.jsp";
						secondMenuName = menuChild[k].tableName;
						count = 1;
					}
					menuChildHref.setAttribute('href', childHrefAttr);
					menuChildHref.setAttribute('class', 'dropdown-item');
					menuChildHref.innerHTML = menuChild[k].menu;
					menuChildDiv.appendChild(menuChildHref);
				}

				menuItem.appendChild(menuChildDiv);
				$('#navUl').append(menuItem);
			}
		}
	}
	if (hasMessage != null && hasMessage == '是' && role == '管理员') {
		$('#navUl').append("<li class=\"nav-item\"><a data-toggle=\"dropdown\" href=\"#\" role=\"button\" aria-expanded=\"false\" class=\"nav-link dropdown-toggle\"><span class=\"mini-dn\">留言管理</span> <span class=\"indicator-right-menu mini-dn\"><i class=\"fa indicator-mn fa-angle-left\"></i></span></a><div class=\"dropdown-menu left-menu-dropdown animated flipInX\" role=\"menu\"><a href=" + baseUrl + "jsp/modules/messages/list.jsp" + " class=\"dropdown-item\">留言列表</a></div></li>");
	}
}