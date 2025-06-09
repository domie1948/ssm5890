package com.dao;

import com.entity.QiuduijieshaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QiuduijieshaoVO;
import com.entity.view.QiuduijieshaoView;


/**
 * 球队介绍
 * 
 * @author 
 * @email 
 * @date 2021-04-02 13:45:16
 */
public interface QiuduijieshaoDao extends BaseMapper<QiuduijieshaoEntity> {
	
	List<QiuduijieshaoVO> selectListVO(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
	
	QiuduijieshaoVO selectVO(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
	
	List<QiuduijieshaoView> selectListView(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);

	List<QiuduijieshaoView> selectListView(Pagination page,@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
	
	QiuduijieshaoView selectView(@Param("ew") Wrapper<QiuduijieshaoEntity> wrapper);
	
}
