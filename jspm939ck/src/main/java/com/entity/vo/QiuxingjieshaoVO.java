package com.entity.vo;

import com.entity.QiuxingjieshaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 球星介绍
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public class QiuxingjieshaoVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 性别
	 */
	
	private String xingbie;
		
	/**
	 * 出生日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chushengriqi;
		
	/**
	 * 发展历程
	 */
	
	private String fazhanlicheng;
		
	/**
	 * 家庭背景
	 */
	
	private String jiatingbeijing;
		
	/**
	 * 重大事件
	 */
	
	private String zhongdashijian;
		
	/**
	 * 获奖
	 */
	
	private String huojiang;
		
	/**
	 * 照片
	 */
	
	private String zhaopian;
				
	
	/**
	 * 设置：性别
	 */
	 
	public void setXingbie(String xingbie) {
		this.xingbie = xingbie;
	}
	
	/**
	 * 获取：性别
	 */
	public String getXingbie() {
		return xingbie;
	}
				
	
	/**
	 * 设置：出生日期
	 */
	 
	public void setChushengriqi(Date chushengriqi) {
		this.chushengriqi = chushengriqi;
	}
	
	/**
	 * 获取：出生日期
	 */
	public Date getChushengriqi() {
		return chushengriqi;
	}
				
	
	/**
	 * 设置：发展历程
	 */
	 
	public void setFazhanlicheng(String fazhanlicheng) {
		this.fazhanlicheng = fazhanlicheng;
	}
	
	/**
	 * 获取：发展历程
	 */
	public String getFazhanlicheng() {
		return fazhanlicheng;
	}
				
	
	/**
	 * 设置：家庭背景
	 */
	 
	public void setJiatingbeijing(String jiatingbeijing) {
		this.jiatingbeijing = jiatingbeijing;
	}
	
	/**
	 * 获取：家庭背景
	 */
	public String getJiatingbeijing() {
		return jiatingbeijing;
	}
				
	
	/**
	 * 设置：重大事件
	 */
	 
	public void setZhongdashijian(String zhongdashijian) {
		this.zhongdashijian = zhongdashijian;
	}
	
	/**
	 * 获取：重大事件
	 */
	public String getZhongdashijian() {
		return zhongdashijian;
	}
				
	
	/**
	 * 设置：获奖
	 */
	 
	public void setHuojiang(String huojiang) {
		this.huojiang = huojiang;
	}
	
	/**
	 * 获取：获奖
	 */
	public String getHuojiang() {
		return huojiang;
	}
				
	
	/**
	 * 设置：照片
	 */
	 
	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}
	
	/**
	 * 获取：照片
	 */
	public String getZhaopian() {
		return zhaopian;
	}
			
}
