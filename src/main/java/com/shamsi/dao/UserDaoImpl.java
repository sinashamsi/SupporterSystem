package com.shamsi.dao;

import com.shamsi.model.User;
import com.shamsi.model.UserProfile;
import com.shamsi.model.UserProfileType;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.HashSet;
import java.util.List;

@Repository("userDao")
public class UserDaoImpl implements UserDao {

    @Autowired
    HibernateTemplate hibernateTemplate;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

	public User findBySSO(String sso) {
        List userList= (List<User>) hibernateTemplate.findByCriteria(
                DetachedCriteria.forClass(User.class)
                        .add(Restrictions.eq("username", sso)));
        return (User)userList.get(0);
	}
    @Transactional
    public User registerUser(String firstName, String lastName, String email, String userName, String passWord) {
        User user = new User();
        user.setFirstName(firstName);
        user.setLastName(lastName);
        user.setEmail(email);
        user.setUsername(userName);
        user.setPassword(bCryptPasswordEncoder.encode(passWord));
        List userProfileList= (List<UserProfile>) hibernateTemplate.findByCriteria(
                DetachedCriteria.forClass(UserProfile.class)
                        .add(Restrictions.eq("type", UserProfileType.USER.getUserProfileType())));
        user.setUserProfiles(new HashSet<UserProfile>(userProfileList));
        hibernateTemplate.save(user);
        return user;
    }

	
}
