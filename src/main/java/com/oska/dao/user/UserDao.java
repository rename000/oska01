package com.oska.dao.user;

import com.oska.model.User;

import java.util.List;

/**
 * Created by liuh on 2017/6/16.
 */
public interface UserDao {
    /**
     * 获取用户信息
     * @param user
     * @return
     */
    List<User> getUserListById(User user);
}
