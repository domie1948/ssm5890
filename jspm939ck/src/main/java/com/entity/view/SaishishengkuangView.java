package com.entity.view;

import com.entity.SaishishengkuangEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 赛事盛况
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
@TableName("saishishengkuang")
public class SaishishengkuangView  extends SaishishengkuangEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public SaishishengkuangView(){
	}
 
 	public SaishishengkuangView(SaishishengkuangEntity saishishengkuangEntity){
 	try {
			BeanUtils.copyProperties(this, saishishengkuangEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
