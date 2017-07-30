package com.shamsi.dao;

import com.shamsi.model.User;

public interface UserDao {
	
	User findBySSO(String sso);

    User registerUser(String firstName, String lastName, String email, String userName, String passWord);


}

