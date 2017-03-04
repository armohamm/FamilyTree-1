package com.ft.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ft.common.BaseDao;
import com.ft.entity.Family;
import com.ft.entity.User;
@Repository
@Transactional
public class FamilyDao extends BaseDao<Family>{

}
