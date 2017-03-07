package com.ft.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ft.common.BaseService;
import com.ft.dao.FamilyDao;
import com.ft.dao.ImageDao;
import com.ft.entity.Image;

@Service
public class ImageService extends BaseService<Image>{
	@Autowired
	ImageDao dao3;
}
