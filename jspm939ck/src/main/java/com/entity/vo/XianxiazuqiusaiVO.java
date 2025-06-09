package com.entity.vo;

import com.entity.XianxiazuqiusaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 线下足球赛
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public class XianxiazuqiusaiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
