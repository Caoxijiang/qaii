package com.qaii.service;

import java.util.List;

import com.qaii.domain.DeptInfo;

public interface DeptInfoService {
	List <DeptInfo> findAllRoleList();
	
	int dellDeptInfoByid(Integer id);
	
	int addDeptInfo(DeptInfo dept);
	
	int updateDeptInfoById(DeptInfo dept);

	DeptInfo finddept(Integer id);
}
