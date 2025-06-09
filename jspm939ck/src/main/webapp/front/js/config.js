
var projectName = '足球赛会管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

]


var indexNav = [

{
	name: '球队介绍',
	url: './pages/qiuduijieshao/list.jsp'
}, 
{
	name: '球星介绍',
	url: './pages/qiuxingjieshao/list.jsp'
}, 
{
	name: '线下足球赛',
	url: './pages/xianxiazuqiusai/list.jsp'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.jsp'
}, 
]

var adminurl =  "http://localhost:8080/jspm939ck/index.jsp";

var cartFlag = false

var chatFlag = false


chatFlag = true


var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"球队介绍","menuJump":"列表","tableName":"qiuduijieshao"}],"menu":"球队介绍管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"球星介绍","menuJump":"列表","tableName":"qiuxingjieshao"}],"menu":"球星介绍管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"赛事盛况","menuJump":"列表","tableName":"saishishengkuang"}],"menu":"赛事盛况管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"线下足球赛","menuJump":"列表","tableName":"xianxiazuqiusai"}],"menu":"线下足球赛管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"系统公告","menuJump":"列表","tableName":"xitonggonggao"}],"menu":"系统公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"论坛交流","tableName":"luntanguanli"}],"menu":"论坛交流"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"lunbotuguanli"},{"buttons":["新增","查看","修改","删除"],"menu":"在线客服","tableName":"kefuguanli"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"球队介绍列表","menuJump":"列表","tableName":"qiuduijieshao"}],"menu":"球队介绍模块"},{"child":[{"buttons":["查看"],"menu":"球星介绍列表","menuJump":"列表","tableName":"qiuxingjieshao"}],"menu":"球星介绍模块"},{"child":[{"buttons":["查看","报名"],"menu":"线下足球赛列表","menuJump":"列表","tableName":"xianxiazuqiusai"}],"menu":"线下足球赛模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","报名"],"menu":"线下足球赛","menuJump":"列表","tableName":"xianxiazuqiusai"}],"menu":"线下足球赛管理"},{"child":[{"buttons":["查看","修改"],"menu":"报名信息","menuJump":"列表","tableName":"baomingxinxi"}],"menu":"报名信息管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"球队介绍列表","menuJump":"列表","tableName":"qiuduijieshao"}],"menu":"球队介绍模块"},{"child":[{"buttons":["查看"],"menu":"球星介绍列表","menuJump":"列表","tableName":"qiuxingjieshao"}],"menu":"球星介绍模块"},{"child":[{"buttons":["查看","报名"],"menu":"线下足球赛列表","menuJump":"列表","tableName":"xianxiazuqiusai"}],"menu":"线下足球赛模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
