package com.swzl_ssm.service.impl;

import com.swzl_ssm.dao.UserMapper;
import com.swzl_ssm.entity.User;
import com.swzl_ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;

/**
 * @author zhangxw
 * @date 19/12/25 - 16:05
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper ud;

    @Override
    public User findById(String username) {
        return ud.selectByPrimaryKey(username);
    }

    @Override
    public void saveUser(User u) {
        ud.insertSelective(u);
    }

    /*@Override
    public boolean loginUser(String username, String password) {
        User us2 = ud.findById(username);
        if (password.equals(us2.getPassword())) {
            return true;
        }else {
            return false;
        }
    }*/
}
