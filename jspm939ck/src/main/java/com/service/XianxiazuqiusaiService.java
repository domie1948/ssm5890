package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XianxiazuqiusaiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XianxiazuqiusaiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XianxiazuqiusaiView;


/**
 * 线下足球赛
 *
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface XianxiazuqiusaiService extends IService<XianxiazuqiusaiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XianxiazuqiusaiVO> selectListVO(Wrapper<XianxiazuqiusaiEntity> wrapper);
   	
   	XianxiazuqiusaiVO selectVO(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
   	
   	List<XianxiazuqiusaiView> selectListView(Wrapper<XianxiazuqiusaiEntity> wrapper);
   	
   	XianxiazuqiusaiView selectView(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XianxiazuqiusaiEntity> wrapper);
   	
}

