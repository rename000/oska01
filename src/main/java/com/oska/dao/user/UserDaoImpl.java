package com.oska.dao.user;

import com.oska.dao.OskaDao;
import com.oska.model.User;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/16.
 */
@Repository(value = "userDao")
public class UserDaoImpl implements UserDao {

    @Resource
    private OskaDao oskaDao;


    @Override
    public List<User> getUserListById(User user) {
        return oskaDao.selectList("getUserList",user);
    }

}
