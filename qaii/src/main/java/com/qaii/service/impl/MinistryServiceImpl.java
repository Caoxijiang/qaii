package com.qaii.service.impl;

import com.qaii.dao.MinistryMapper;
import com.qaii.domain.Ministry;
import com.qaii.service.MinistryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * Created by kunpeng on 2018/11/15 15:52
 */
@Service("ministryService")
public class MinistryServiceImpl implements MinistryService {
    @Resource
    private MinistryMapper ministryMapper;

    @Override
    public int insertRecordReturnID(Ministry record) {
        return ministryMapper.insertRecordReturnID(record);
    }

    @Override
    public int insertRecord(Ministry record) {
        return ministryMapper.insertSelective(record);
    }

    @Override
    public int deleteByPrimaryKeys(Integer[] id) {
        return ministryMapper.deleteByPrimaryKeys(id);
    }

    @Override
    public int updateByPrimaryKey(Ministry record) {
        return ministryMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Ministry> listRecords() {
        return ministryMapper.listRecords();
    }

    @Override
    public Ministry getRecord(Integer id) {
        return ministryMapper.getRecord(id);
    }

    @Override
    public int selectCountNums(String ministrytime) {
        return ministryMapper.selectCountNums(ministrytime);
    }

    @Override
    public List<String> listministrytime() {
        return ministryMapper.listministrytime();
    }

    //这里是用累加的方式来查询外部服务企业数量
    @Override
    public int selectOutCountNums(List<String> list) {
        int totalRows=0;
        for (String str:list){
            int i=ministryMapper.selectCountNums(str);
            System.out.println(i);
            totalRows += ministryMapper.selectCountNums(str);
        }
        return totalRows;
    }
}
