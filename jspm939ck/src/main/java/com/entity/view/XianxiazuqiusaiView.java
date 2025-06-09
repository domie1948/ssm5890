package com.entity.view;

import com.entity.XianxiazuqiusaiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 线下足球赛
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("xianxiazuqiusai")
public class XianxiazuqiusaiView  extends XianxiazuqiusaiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XianxiazuqiusaiView(){
	}
 
 	public XianxiazuqiusaiView(XianxiazuqiusaiEntity xianxiazuqiusaiEntity){
 	try {
			BeanUtils.copyProperties(this, xianxiazuqiusaiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
