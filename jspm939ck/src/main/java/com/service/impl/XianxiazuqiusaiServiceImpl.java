package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XianxiazuqiusaiDao;
import com.entity.XianxiazuqiusaiEntity;
import com.service.XianxiazuqiusaiService;
import com.entity.vo.XianxiazuqiusaiVO;
import com.entity.view.XianxiazuqiusaiView;

@Service("xianxiazuqiusaiService")
public class XianxiazuqiusaiServiceImpl extends ServiceImpl<XianxiazuqiusaiDao, XianxiazuqiusaiEntity> implements XianxiazuqiusaiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XianxiazuqiusaiEntity> page = this.selectPage(
                new Query<XianxiazuqiusaiEntity>(params).getPage(),
                new EntityWrapper<XianxiazuqiusaiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XianxiazuqiusaiEntity> wrapper) {
		  Page<XianxiazuqiusaiView> page =new Query<XianxiazuqiusaiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XianxiazuqiusaiVO> selectListVO(Wrapper<XianxiazuqiusaiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XianxiazuqiusaiVO selectVO(Wrapper<XianxiazuqiusaiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XianxiazuqiusaiView> selectListView(Wrapper<XianxiazuqiusaiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XianxiazuqiusaiView selectView(Wrapper<XianxiazuqiusaiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
