package com.entity.vo;

import com.entity.SaishishengkuangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 赛事盛况
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public class SaishishengkuangVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
