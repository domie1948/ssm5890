package com.dao;

import com.entity.QiuxingjieshaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuxingjieshaoVO;
import com.entity.view.QiuxingjieshaoView;


/**
 * 球星介绍
 * 
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface QiuxingjieshaoDao extends BaseMapper<QiuxingjieshaoEntity> {
	
	List<QiuxingjieshaoVO> selectListVO(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
	
	QiuxingjieshaoVO selectVO(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
	
	List<QiuxingjieshaoView> selectListView(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);

	List<QiuxingjieshaoView> selectListView(Pagination page,@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
	
	QiuxingjieshaoView selectView(@Param("ew") Wrapper<QiuxingjieshaoEntity> wrapper);
	
}
