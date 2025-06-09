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


import com.dao.QiuduijieshaoDao;
import com.entity.QiuduijieshaoEntity;
import com.service.QiuduijieshaoService;
import com.entity.vo.QiuduijieshaoVO;
import com.entity.view.QiuduijieshaoView;

@Service("qiuduijieshaoService")
public class QiuduijieshaoServiceImpl extends ServiceImpl<QiuduijieshaoDao, QiuduijieshaoEntity> implements QiuduijieshaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QiuduijieshaoEntity> page = this.selectPage(
                new Query<QiuduijieshaoEntity>(params).getPage(),
                new EntityWrapper<QiuduijieshaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QiuduijieshaoEntity> wrapper) {
		  Page<QiuduijieshaoView> page =new Query<QiuduijieshaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QiuduijieshaoVO> selectListVO(Wrapper<QiuduijieshaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QiuduijieshaoVO selectVO(Wrapper<QiuduijieshaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QiuduijieshaoView> selectListView(Wrapper<QiuduijieshaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QiuduijieshaoView selectView(Wrapper<QiuduijieshaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
