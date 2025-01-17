package vn.iotstar.sevices.impl;

//import vn.iotstar.dao.IUserDao;

import vn.iotstar.dao.IUserDao2;

import vn.iotstar.dao.impl.UserDaoImpl2;
import vn.iotstar.models.UserModel2;
import vn.iotstar.sevices.IUserService2;

public class UserService2 implements IUserService2{
	 IUserDao2 userDao2 = new UserDaoImpl2();
	@Override
	public void insert(UserModel2 user) {
		userDao2.insert(user);
		
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userDao2.checkExistEmail(email);
	}

	@Override
	public boolean checkExistUsername(String username) {
		return userDao2.checkExistUsername(username);

	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userDao2.checkExistPhone(phone);

	}

	@Override
	public boolean register( String username, String password,String email) {
		if (userDao2.checkExistUsername(username)) {
			return false;
			}
			//long millis=System.currentTimeMillis(); 
			//java.sql.Date date = new java.sql.Date(millis);
			userDao2.insert(new UserModel2(username,password,email));
			return true;
	}

}
