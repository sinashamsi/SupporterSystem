package com.shamsi.dao;

import com.shamsi.model.User;

public interface UserDao {

	User findById(int id);
	
	User findBySSO(String sso);
	
}

