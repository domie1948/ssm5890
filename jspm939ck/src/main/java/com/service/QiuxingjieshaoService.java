package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QiuxingjieshaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QiuxingjieshaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QiuxingjieshaoView;


/**
 * 球星介绍
 *
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface QiuxingjieshaoService extends IService<QiuxingjieshaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiuxingjieshaoVO> selectListVO(Wrapper<QiuxingjieshaoEntity> wrapper);
   	
   	QiuxingjieshaoVO selectVO(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
   	
   	List<QiuxingjieshaoView> selectListView(Wrapper<QiuxingjieshaoEntity> wrapper);
   	
   	QiuxingjieshaoView selectView(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiuxingjieshaoEntity> wrapper);
   	
}

