package com.tmwrk.voosky.database.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.tmwrk.voosky.database.dao.BaseDao;
import com.tmwrk.voosky.database.vo.User;

@Repository("userDao")
public class UserDaoImpl extends BaseDao<User> implements IUser{

	@Override
	public boolean checkUser(User user) {
		boolean flag = false ;
		int count = (Integer)getSqlMapClientTemplate().queryForObject("user.checkUser", user) ;
		if(count>0){
			flag = true ;
		}
		return flag;
	}

	@Override
	public User add(User params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User update(User params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findById(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User> findAll(Map<String, Object> params) {
		// TODO Auto-generated method stub
		return null;
	}

}
