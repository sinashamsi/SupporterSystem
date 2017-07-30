package com.shamsi.service;

import com.shamsi.model.User;
import com.shamsi.valueObject.UserRegisterInfoVO;

public interface UserService {

	User findBySso(String sso);

	User registerUser(UserRegisterInfoVO userRegisterInfoVO);

}