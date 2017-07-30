package com.shamsi.service;

import com.shamsi.dao.UserDao;
import com.shamsi.model.User;
import com.shamsi.valueObject.UserRegisterInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao dao;

	public User findBySso(String sso) {
		return dao.findBySSO(sso);
	}

    public User registerUser(UserRegisterInfoVO userRegisterInfoVO) {
        String firstName = userRegisterInfoVO.getFirstName();
        String lastName = userRegisterInfoVO.getLastName();
        String email = userRegisterInfoVO.getEmail();
        String userName = userRegisterInfoVO.getUserName();
        String passWord = userRegisterInfoVO.getPassWord();
        return dao.registerUser(firstName, lastName, email, userName, passWord);
    }

}
