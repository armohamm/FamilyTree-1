package com.ft.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ft.common.BaseDao;
import com.ft.entity.Activity;

@Repository
@Transactional
public class ActivityDao extends BaseDao<Activity> {

}
