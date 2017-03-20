package com.ft.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.ft.common.BaseDao;
import com.ft.entity.Image;


@Repository
@Transactional
public class ImageDao  extends BaseDao<Image>{

}
