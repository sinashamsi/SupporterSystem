package com.shamsi.service;

import com.shamsi.model.User;

public interface UserService {

	User findById(int id);
	
	User findBySso(String sso);
	
}