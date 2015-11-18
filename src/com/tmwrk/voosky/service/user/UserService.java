package com.tmwrk.voosky.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tmwrk.voosky.database.dao.impl.IUser;
import com.tmwrk.voosky.database.vo.User;

@Service("userService")
@Transactional
public class UserService {
	
	@Autowired
	@Qualifier("userDao")
	private IUser userDao ;
	
	public boolean checkUser(String username,String pwd){
		User user = new User() ;
		user.setUserName(username);
		user.setPwd(pwd);
		
		return userDao.checkUser(user) ;
	}

}
