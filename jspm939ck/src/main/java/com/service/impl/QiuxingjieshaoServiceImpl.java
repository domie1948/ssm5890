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


import com.dao.QiuxingjieshaoDao;
import com.entity.QiuxingjieshaoEntity;
import com.service.QiuxingjieshaoService;
import com.entity.vo.QiuxingjieshaoVO;
import com.entity.view.QiuxingjieshaoView;

@Service("qiuxingjieshaoService")
public class QiuxingjieshaoServiceImpl extends ServiceImpl<QiuxingjieshaoDao, QiuxingjieshaoEntity> implements QiuxingjieshaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QiuxingjieshaoEntity> page = this.selectPage(
                new Query<QiuxingjieshaoEntity>(params).getPage(),
                new EntityWrapper<QiuxingjieshaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QiuxingjieshaoEntity> wrapper) {
		  Page<QiuxingjieshaoView> page =new Query<QiuxingjieshaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QiuxingjieshaoVO> selectListVO(Wrapper<QiuxingjieshaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QiuxingjieshaoVO selectVO(Wrapper<QiuxingjieshaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QiuxingjieshaoView> selectListView(Wrapper<QiuxingjieshaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QiuxingjieshaoView selectView(Wrapper<QiuxingjieshaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
