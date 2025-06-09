<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<link href="https://cdn.bootcdn.net/ajax/libs/Swiper/5.4.5/css/swiper.min.css" rel="stylesheet">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		html::after {
			position: fixed;
			top: 0;
			right: 0;
			left: 0;
			bottom: 0;
			content: '';
			display: block;
			background-attachment: fixed;
			background-size: cover;
			background-position: center;
					}
		#app {
			position: relative;
			z-index: 1;
		}
		#swiper {
			overflow: hidden;
		}
		#swiper .layui-carousel-ind li {
			width: 16px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 3px;
			background-color: #f7f7f7;
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
		#swiper .layui-carousel-ind li.layui-this {
			width: 24px;
			height: 10px;
			border-width: 0;
			border-style: solid;
			border-color: rgba(0,0,0,.3);
			border-radius: 0;
			background-color: rgba(110,22,64,1);
			box-shadow: 0 0 6px rgba(110,22,64,.8);
		}
	
		.recommend {
		  padding: 10px 0;
		  display: flex;
		  justify-content: center;
		  background-repeat: no-repeat;
		  background-position: center center;
		  background-size: cover;
		}
	
		.recommend .box {
		    width: 1014px;
		}
	
		.recommend .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.recommend .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.recommend .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		  	  	  		.index-pv1 .box .list .list-item {
			flex: 0 0 25%;
			padding: 0 5px;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 5px;
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.recommend .box .list img {
			width: 100%;
			height: 100px;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.recommend .box .list .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			text-align: center;
			box-sizing: border-box;
		}
	
		.recommend .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.recommend .box .list .list-item5 {
			flex: 0 0 20%;
		}
		
		/* 商品推荐-样式4-开始 */
		.recommend .list-4{
		  display: flex;
		  flex-wrap: wrap;
		  justify-content: center;
		}
		.recommend .list-4 .list-4-body {
		    display: flex;
		    flex-direction: column;
		}
		
		.recommend .list-4 .list-4-item {
		    position: relative;
		    z-index: 1;
		}
		.recommend .list-4 .list-4-item.item-1 {
		    width: 400px;
		    height: 400px;
		    margin-right: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-2 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-3 {
		    width: 220px;
		    height: 190px;
		    margin-right: 20px;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item.item-4 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 20px;
		}
		
		.recommend .list-4 .list-4-item.item-5 {
		    width: 190px;
		    height: 190px;
		    margin-right: 0;
		    margin-bottom: 0;
		}
		
		.recommend .list-4 .list-4-item img {
		      width: 100%;
		      height: 100%;
		      object-fit: cover;
		      display: block;
		    }
		
		.recommend .list-4 .list-4-item .list-4-item-center {
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			height: auto;
			display: flex;
			flex-wrap: wrap;
			background-color: rgba(0,0,0,.3);
		}
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-title {
			width: 50%;
			text-align: left;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		
		.recommend .list-4 .list-4-item .list-4-item-center .list-4-item-price {
			width: 50%;
			text-align: right;
			line-height: 44px;
			color: #fff;
			font-size: 14px;
			padding: 0 6px;
		}
		/* 商品推荐-样式4-结束 */
		/* 商品推荐-样式5-开始 */
		.recommend #recommend-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend #recommend-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend #recommend-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend #recommend-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		
		.recommend #lists-five-swiper.swiper-container-horizontal>.swiper-pagination-bullets {
		    line-height: 1;
		}
		.recommend #lists-five-swiper .swiper-slide.swiper-slide-prev {
			z-index: 5;
		}
		.recommend #lists-five-swiper .swiper-slide.swiper-slide-next {
			z-index: 5;
		}
		.recommend #lists-five-swiper .swiper-slide.swiper-slide-active {
			z-index: 9;
		}
		/* 商品推荐-样式5-结束 */
	
		.news {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
			width: 100%;
		}
	
		.news .box {
		    width: 1014px;
		}
	
		.news .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.news .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.news .box .list {
			display: flex;
			flex-wrap: wrap;
		}
		  	  	  		.index-pv2 .box .list .list-item {
			flex: 0 0 50%;
			padding: 0 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body {
			border: 1px solid rgba(0, 0, 0, 3);
			padding: 10px;
			box-sizing: border-box;
			display: flex;
			cursor: pointer;
		}
	
		.news .box .list .list-item .list-item-body img {
			width: 120px;
			height: 100%;
			display: block;
			margin: 0 auto;
	    object-fit: cover;
	    max-width: 100%;
		}
	
		.news .box .list .list-item .list-item-body .item-info {
			flex: 1;
			display: flex;
			justify-content: space-between;
			flex-direction: column;
			padding-left: 10px;
			box-sizing: border-box;
		}
	
		.news .box .list .list-item .list-item-body .item-info .name {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			box-sizing: border-box;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item .list-item-body .item-info .time {
			padding-top: 5px;
			color: red;
			font-size: 14px;
			overflow: hidden;
			text-overflow: ellipsis;
			display: -webkit-box;
			-webkit-line-clamp: 1;
			-webkit-box-orient: vertical;
		}
	
		.news .box .list .list-item1 {
			flex: 0 0 100%;
		}
	
		.news .box .list .list-item3 {
			flex: 0 0 33.33%;
		}
	
		.lists {
			padding: 10px 0;
			display: flex;
			justify-content: center;
			background-repeat: no-repeat;
			background-position: center center;
			background-size: cover;
		}
	
		.lists .box {
		    width: 1014px;
		    overflow: hidden;
		}
	
		.lists .box .title {
			padding: 10px 5px;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	
		.lists .box .title span {
			padding: 0 10px;
			line-height: 1.4;
		}
	
		.lists .box .swiper-slide {
			box-sizing: border-box;
			cursor: pointer;
		}
	
		.lists .box .swiper-slide .img-box {
			width: 100%;
			overflow: hidden;
		}
	
		.lists .box .swiper-slide .img-box img {
			width: 100%;
			height: 100%;
			object-fit: cover;
	    max-width: 100%;
		}
	
	  	    	    	  	.index-pv3 .box .list .list-item {
	  		flex: 0 0 ${var3}%;
	  		padding: 0 10px;
	  		box-sizing: border-box;
	  	}
	
		.index-pv1 .animation-box:hover {
			transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.2) rotate(360deg) skew(0deg, 0deg);
			transition: all 0.3s;
			z-index: 2;
			position: relative;
		}
	  .index-pv2 .animation-box:hover {
	  	transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.2) rotate(360deg) skew(0deg, 0deg);
	  	transition: all 0.3s;
		z-index: 2;
		position: relative;
	  }
	  .index-pv3 .animation-box:hover {
	  	transform: perspective(1000px) translate3d(0px, 0px, 0px) scale(1.2) rotate(360deg) skew(0deg, 0deg);
	  	transition: all 0.3s;
		z-index: 2;
		position: relative;
	  }
	  
		#new-list-6 .swiper-wrapper {
			-webkit-transition-timing-function: linear;
			-moz-transition-timing-function: linear;
			-ms-transition-timing-function: linear;
			-o-transition-timing-function: linear;
			transition-timing-function: linear;
		}
	</style>
	<body>

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" style="overflow: hidden;" id="swiper" :style='{"boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"0 auto","borderColor":"rgba(0,0,0,.3)","borderRadius":"20px","borderWidth":"0","width":"80%","borderStyle":"solid"}'>
			  <div carousel-item>
				<div v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
					<img style="width: 100%;height: 100%;object-fit:cover;" :src="item.value" />
				</div>
			  </div>
			</div>
			<!-- 轮播图 -->

			
                        			            			            			            			            			            			            			            			            						<!-- 推荐 -->
            
            
			
																																																												<!-- 新闻资讯 -->
			
			
			
																											<!-- 图文列表 -->
							<!-- 样式三 -->
				<div class="lists index-pv3" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px 0 0 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(110,22,64,1)","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px 0 10px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"#f7f7f7","color":"rgba(110,22,64,1)","borderRadius":"32px","alignItems":"center","borderWidth":"0 10px","fontSize":"16px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>赛事盛况展示</span>
				    </div>
				    <div class="list">
						<div class="swiper-container" id="listssaishishengkuang">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"padding":"6px","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' v-for="(item,index) in saishishengkuangList" :key="index" @click="jump('../saishishengkuang/detail.jsp?id='+item.id)">
									<div class="img-box">
																														<img :name="item.id" :style='{"boxShadow":"0 0 6px rgba(110,22,64,.8)","borderColor":"rgba(0,0,0,.3)","borderRadius":"0","borderWidth":"0","width":"170px","borderStyle":"solid","height":"200px"}' :src="item.tupian?item.tupian.split(',')[0]:''" alt="" />
																																																																																																																																	</div>
																																																															<div v-if='true' :style='{"isshow":true,"padding":"0","margin":"5px 0","backgroundColor":"rgba(0,0,0,.2)","color":"rgba(110,22,64,1)","borderRadius":"0 0 6px 6px","textAlign":"left","fontSize":"14px"}' class="name">{{item.saishi}}</div>
																																																																																</div>
							</div>
							<!-- 如果需要分页器 -->
							<div class="swiper-pagination"></div>
							<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
				    </div>
				  </div>
				</div>
																											<!-- 图文列表 -->
							<!-- 样式三 -->
				<div class="lists index-pv3" :style='{"padding":"10px 0 10px 0","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px 0 0 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"rgba(110,22,64,1)","borderRadius":"0","borderWidth":"0","borderStyle":"solid"}'>
				  <div class="box" style='width:80%'>
				    <div class="title" :style='{"isshow":true,"padding":"10px 0 10px 0","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"10px 0 10px 0","borderColor":"rgba(0,0,0,1)","backgroundColor":"#f7f7f7","color":"rgba(110,22,64,1)","borderRadius":"32px","alignItems":"center","borderWidth":"0 10px","fontSize":"16px","borderStyle":"solid"}'>
				      <span>DATA SHOW</span><span>系统公告展示</span>
				    </div>
				    <div class="list">
						<div class="swiper-container" id="listsxitonggonggao">
							<div class="swiper-wrapper">
								<div class="swiper-slide animation-box" :style='{"padding":"6px","boxShadow":"0 0 6px rgba(110,22,64,.8)","margin":"0 0 10px 0","borderColor":"rgba(0,0,0,.3)","backgroundColor":"#fff","borderRadius":"4px","borderWidth":"0","borderStyle":"solid"}' v-for="(item,index) in xitonggonggaoList" :key="index" @click="jump('../xitonggonggao/detail.jsp?id='+item.id)">
									<div class="img-box">
																																																																															</div>
																											<div v-if='true' :style='{"isshow":true,"padding":"0","margin":"5px 0","backgroundColor":"rgba(0,0,0,.2)","color":"rgba(110,22,64,1)","borderRadius":"0 0 6px 6px","textAlign":"left","fontSize":"14px"}' class="name">{{item.tupian}}</div>
																																				<div v-if='true' :style='{"isshow":true,"padding":"0","margin":"5px 0","backgroundColor":"rgba(0,0,0,.2)","color":"rgba(110,22,64,1)","borderRadius":"0 0 6px 6px","textAlign":"left","fontSize":"14px"}' class="name">{{item.biaoti}}</div>
																																												</div>
							</div>
							<!-- 如果需要分页器 -->
							<div class="swiper-pagination"></div>
							<!-- 如果需要导航按钮 -->
							<div class="swiper-button-prev"></div>
							<div class="swiper-button-next"></div>
						</div>
				    </div>
				  </div>
				</div>
																								<!-- 图文列表 -->
			

		</div>

		<script src="../../layui/layui.js"></script>
		<script src="https://cdn.bootcdn.net/ajax/libs/Swiper/5.4.5/js/swiper.min.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
                    
                    
                                                                                                                                                                                                                                                                                                                                                                                                                

                    
					                                                                                                                                                                saishishengkuangList: [],
                                                                                                                                                                xitonggonggaoList: [],
                                                                                                                                            

                    // 轮播图
					swiperList: [],
					// 新闻资讯
					newsList: [],
					leftNewsList: [],
					rightNewsList: []
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 60) {
								return val.substring(0, 60).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						vue.swiperList = res.data.list;
						
						vue.$nextTick(() => {
							carousel.render({
								elem: '#swiper',
								width: '80%',
								height: '250px',
								arrow: 'hover',
								anim: 'default',
								autoplay: 'true',
								interval: '3000',
								indicator: 'inside'
							});
						})
					}
				});
                
                
				                                                                                                                                                                                                                                                                                                                
                
                
                                                                                                                                                                                                                                                                                                                                
				
                
                                                                                                                                                http.request(`saishishengkuang/list?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.saishishengkuangList = res.data.list
					let flag = 3;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					options.on = {
						click: function(e) {
							let id = e.target.name
							jump('../saishishengkuang/detail.jsp?id='+e.target.name)
						}
					}
					if(flag == 3) {
						vue.$nextTick(() => {
																																																															new Swiper ('#listssaishishengkuang', options)
																																																								new Swiper ('#listsxitonggonggao', options)
																																																})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiper', {
								loop: true,
								speed: 500,
								slidesPerView: 5,
								spaceBetween: 10,
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});
                                                                                                                                http.request(`xitonggonggao/list?limit=4`, 'get', {
					page: 1,
					limit: 4
				}, function(res) {
					vue.xitonggonggaoList = res.data.list
					let flag = 3;
					let options = {"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},"slidesPerView":5,"loop":true,"spaceBetween":20,"autoplay":{"delay":3000,"disableOnInteraction":false}}
					options.pagination = {el:'null'}
					options.on = {
						click: function(e) {
							let id = e.target.name
							jump('../xitonggonggao/detail.jsp?id='+e.target.name)
						}
					}
					if(flag == 3) {
						vue.$nextTick(() => {
																																																															new Swiper ('#listssaishishengkuang', options)
																																																								new Swiper ('#listsxitonggonggao', options)
																																																})
					}
					// 商品列表样式五
					if(flag == 5) {
						vue.$nextTick(() => {
							var swiper = new Swiper('#lists-five-swiper', {
								loop: true,
								speed: 500,
								slidesPerView: 5,
								spaceBetween: 10,
								autoplay: {"delay":3000,"disableOnInteraction":false},
								centeredSlides: true,
								watchSlidesProgress: true,
								on: {
									setTranslate: function() {
										slides = this.slides
										for (i = 0; i < slides.length; i++) {
											slide = slides.eq(i)
											progress = slides[i].progress
											// slide.html(progress.toFixed(2)); //看清楚progress是怎么变化的
											slide.css({
												'opacity': '',
												'background': ''
											});
											slide.transform(''); //清除样式
							
											slide.transform('scale(' + (1.5 - Math.abs(progress) / 4) + ')');
										}
									},
									setTransition: function(transition) {
										for (var i = 0; i < this.slides.length; i++) {
											var slide = this.slides.eq(i)
											slide.transition(transition);
										}
									},
								},
								navigation: {"nextEl":".swiper-button-next","prevEl":".swiper-button-prev"},
								pagination: {"el":".swiper-pagination","clickable":true},
							});
						})
					}
				});
                                                                                                                
				
			});
		</script>
	</body>
</html>
