package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QiuduijieshaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QiuduijieshaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QiuduijieshaoView;


/**
 * 球队介绍
 *
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface QiuduijieshaoService extends IService<QiuduijieshaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QiuduijieshaoVO> selectListVO(Wrapper<QiuduijieshaoEntity> wrapper);
   	
   	QiuduijieshaoVO selectVO(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
   	
   	List<QiuduijieshaoView> selectListView(Wrapper<QiuduijieshaoEntity> wrapper);
   	
   	QiuduijieshaoView selectView(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QiuduijieshaoEntity> wrapper);
   	
}

