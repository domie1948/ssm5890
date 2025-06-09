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


import com.dao.SaishishengkuangDao;
import com.entity.SaishishengkuangEntity;
import com.service.SaishishengkuangService;
import com.entity.vo.SaishishengkuangVO;
import com.entity.view.SaishishengkuangView;

@Service("saishishengkuangService")
public class SaishishengkuangServiceImpl extends ServiceImpl<SaishishengkuangDao, SaishishengkuangEntity> implements SaishishengkuangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SaishishengkuangEntity> page = this.selectPage(
                new Query<SaishishengkuangEntity>(params).getPage(),
                new EntityWrapper<SaishishengkuangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SaishishengkuangEntity> wrapper) {
		  Page<SaishishengkuangView> page =new Query<SaishishengkuangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SaishishengkuangVO> selectListVO(Wrapper<SaishishengkuangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SaishishengkuangVO selectVO(Wrapper<SaishishengkuangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SaishishengkuangView> selectListView(Wrapper<SaishishengkuangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SaishishengkuangView selectView(Wrapper<SaishishengkuangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
