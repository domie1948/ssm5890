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
 * 线下足球赛
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("xianxiazuqiusai")
public class XianxiazuqiusaiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public XianxiazuqiusaiEntity() {
		
	}
	
	public XianxiazuqiusaiEntity(T t) {
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
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 比赛编号
	 */
					
	private String bisaibianhao;
	
	/**
	 * 地点
	 */
					
	private String didian;
	
	/**
	 * 人数
	 */
					
	private String renshu;
	
	/**
	 * 人均费用
	 */
					
	private String renjunfeiyong;
	
	/**
	 * 时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date shijian;
	
	/**
	 * 备注
	 */
					
	private String beizhu;
	
	
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
	 * 设置：图片
	 */
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
	/**
	 * 设置：比赛编号
	 */
	public void setBisaibianhao(String bisaibianhao) {
		this.bisaibianhao = bisaibianhao;
	}
	/**
	 * 获取：比赛编号
	 */
	public String getBisaibianhao() {
		return bisaibianhao;
	}
	/**
	 * 设置：地点
	 */
	public void setDidian(String didian) {
		this.didian = didian;
	}
	/**
	 * 获取：地点
	 */
	public String getDidian() {
		return didian;
	}
	/**
	 * 设置：人数
	 */
	public void setRenshu(String renshu) {
		this.renshu = renshu;
	}
	/**
	 * 获取：人数
	 */
	public String getRenshu() {
		return renshu;
	}
	/**
	 * 设置：人均费用
	 */
	public void setRenjunfeiyong(String renjunfeiyong) {
		this.renjunfeiyong = renjunfeiyong;
	}
	/**
	 * 获取：人均费用
	 */
	public String getRenjunfeiyong() {
		return renjunfeiyong;
	}
	/**
	 * 设置：时间
	 */
	public void setShijian(Date shijian) {
		this.shijian = shijian;
	}
	/**
	 * 获取：时间
	 */
	public Date getShijian() {
		return shijian;
	}
	/**
	 * 设置：备注
	 */
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}

}
