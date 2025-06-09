package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SaishishengkuangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SaishishengkuangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SaishishengkuangView;


/**
 * 赛事盛况
 *
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface SaishishengkuangService extends IService<SaishishengkuangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SaishishengkuangVO> selectListVO(Wrapper<SaishishengkuangEntity> wrapper);
   	
   	SaishishengkuangVO selectVO(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
   	
   	List<SaishishengkuangView> selectListView(Wrapper<SaishishengkuangEntity> wrapper);
   	
   	SaishishengkuangView selectView(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SaishishengkuangEntity> wrapper);
   	
}

