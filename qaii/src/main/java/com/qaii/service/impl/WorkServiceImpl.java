package com.qaii.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.qaii.dao.WorkMapper;
import com.qaii.domain.Work;
import com.qaii.service.WorkService;

@Service("workservice")
public class WorkServiceImpl implements WorkService {
	
	@Resource
	private WorkMapper workmapper;

	@Override
	public int getCountNum() {
		// TODO Auto-generated method stub
		return workmapper.selectCountNum();
	}

	@Override
	public List<Work> getAllWorkMsg() {
		// TODO Auto-generated method stub
		return workmapper.getAllWorkMsg();
	}

	@Override
	public int deleteMsg(Integer[] eid) {
		// TODO Auto-generated method stub
		return workmapper.deleteByPrimaryKeys(eid);
	}

	@Override
	public Work selectByPrimaryKey(int id) {
		// TODO Auto-generated method stub
		return workmapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateMsg(Work work) {
		// TODO Auto-generated method stub
		return workmapper.updateByPrimaryKey(work);
	}

	@Override
	public int insertMsg(Work work) {
		// TODO Auto-generated method stub
		return workmapper.insert(work);
	}

	@Override
	public int countEachMonthwork(String firstDay, String endDay) {
		// TODO Auto-generated method stub
		return workmapper.countEachMonthwork(firstDay, endDay);
	}

}
