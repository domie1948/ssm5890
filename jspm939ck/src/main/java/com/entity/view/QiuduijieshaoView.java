package com.entity.view;

import com.entity.QiuduijieshaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 球队介绍
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("qiuduijieshao")
public class QiuduijieshaoView  extends QiuduijieshaoEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public QiuduijieshaoView(){
	}
 
 	public QiuduijieshaoView(QiuduijieshaoEntity qiuduijieshaoEntity){
 	try {
			BeanUtils.copyProperties(this, qiuduijieshaoEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
