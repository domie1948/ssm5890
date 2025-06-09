package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 球星介绍
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("qiuxingjieshao")
public class QiuxingjieshaoEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public QiuxingjieshaoEntity() {
		
	}
	
	public QiuxingjieshaoEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 名字
	 */
					
	private String mingzi;
	
	/**
	 * 性别
	 */
					
	private String xingbie;
	
	/**
	 * 出生日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：名字
	 */
	public void setMingzi(String mingzi) {
		this.mingzi = mingzi;
	}
	/**
	 * 获取：名字
	 */
	public String getMingzi() {
		return mingzi;
	}
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
