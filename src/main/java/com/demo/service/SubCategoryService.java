package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.SubCategoryDAO;
import com.demo.vo.SubCategoryVO;


@Service
public class SubCategoryService {
	
@Autowired 
SubCategoryDAO subcategoryDAO;

@Transactional
public void insert(SubCategoryVO subcategoryVO )
{
	subcategoryDAO.insert( subcategoryVO);
}

@Transactional
public List search(SubCategoryVO subcategoryVO  )

{
	List ls=subcategoryDAO.search(subcategoryVO);
	return ls;
}
@Transactional
public List edit(SubCategoryVO subcategoryVO )

{
	List ls=subcategoryDAO.edit(subcategoryVO);
	return ls;
}
@Transactional
public void delete(SubCategoryVO subcategoryVO)
{
	subcategoryDAO.delete(subcategoryVO);
}



}
