package com.ft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ft.common.BaseService;

import com.ft.dao.FamilyDao;
import com.ft.entity.Family;



@Service
public class FamilyService  extends BaseService<Family>{

	@Autowired
FamilyDao dao2;

}