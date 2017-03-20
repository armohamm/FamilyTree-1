package com.ft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ft.common.BaseService;
import com.ft.dao.ActivityDao;
import com.ft.entity.Activity;
import com.ft.entity.User;

@Service
public class ActivityService extends BaseService<Activity> {
	
	@Autowired
	ActivityDao acdao;

}
