package com.dao;

import com.entity.XianxiazuqiusaiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XianxiazuqiusaiVO;
import com.entity.view.XianxiazuqiusaiView;


/**
 * 线下足球赛
 * 
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface XianxiazuqiusaiDao extends BaseMapper<XianxiazuqiusaiEntity> {
	
	List<XianxiazuqiusaiVO> selectListVO(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
	
	XianxiazuqiusaiVO selectVO(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
	
	List<XianxiazuqiusaiView> selectListView(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);

	List<XianxiazuqiusaiView> selectListView(Pagination page,@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
	
	XianxiazuqiusaiView selectView(@Param("ew") Wrapper<XianxiazuqiusaiEntity> wrapper);
	
}
