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
 * 赛事盛况
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("saishishengkuang")
public class SaishishengkuangEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public SaishishengkuangEntity() {
		
	}
	
	public SaishishengkuangEntity(T t) {
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
	 * 参赛球员
	 */
					
	private String cansaiqiuyuan;
	
	/**
	 * 赛事
	 */
					
	private String saishi;
	
	/**
	 * 比分
	 */
					
	private String bifen;
	
	/**
	 * 比赛细节
	 */
					
	private String bisaixijie;
	
	/**
	 * 比赛时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date bisaishijian;
	
	
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
	 * 设置：参赛球员
	 */
	public void setCansaiqiuyuan(String cansaiqiuyuan) {
		this.cansaiqiuyuan = cansaiqiuyuan;
	}
	/**
	 * 获取：参赛球员
	 */
	public String getCansaiqiuyuan() {
		return cansaiqiuyuan;
	}
	/**
	 * 设置：赛事
	 */
	public void setSaishi(String saishi) {
		this.saishi = saishi;
	}
	/**
	 * 获取：赛事
	 */
	public String getSaishi() {
		return saishi;
	}
	/**
	 * 设置：比分
	 */
	public void setBifen(String bifen) {
		this.bifen = bifen;
	}
	/**
	 * 获取：比分
	 */
	public String getBifen() {
		return bifen;
	}
	/**
	 * 设置：比赛细节
	 */
	public void setBisaixijie(String bisaixijie) {
		this.bisaixijie = bisaixijie;
	}
	/**
	 * 获取：比赛细节
	 */
	public String getBisaixijie() {
		return bisaixijie;
	}
	/**
	 * 设置：比赛时间
	 */
	public void setBisaishijian(Date bisaishijian) {
		this.bisaishijian = bisaishijian;
	}
	/**
	 * 获取：比赛时间
	 */
	public Date getBisaishijian() {
		return bisaishijian;
	}

}
