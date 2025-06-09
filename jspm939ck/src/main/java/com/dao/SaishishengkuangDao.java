package com.dao;

import com.entity.SaishishengkuangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SaishishengkuangVO;
import com.entity.view.SaishishengkuangView;


/**
 * 赛事盛况
 * 
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface SaishishengkuangDao extends BaseMapper<SaishishengkuangEntity> {
	
	List<SaishishengkuangVO> selectListVO(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
	
	SaishishengkuangVO selectVO(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
	
	List<SaishishengkuangView> selectListView(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);

	List<SaishishengkuangView> selectListView(Pagination page,@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
	
	SaishishengkuangView selectView(@Param("ew") Wrapper<SaishishengkuangEntity> wrapper);
	
}
