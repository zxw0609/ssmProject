package com.swzl_ssm.service;

import com.swzl_ssm.entity.User;

import java.util.List;

/**
 * @author zhangxw
 * @date 19/12/25 - 16:04
 */
public interface UserService {
    /**
     * 通过用户名查询用户信息
     *
     * @param username
     * @return
     */
    User findById(String username);

    /**
     * 保存用户信息
     *
     * @param user
     */
    void saveUser(User user);

    /**
     * 查询全部信息
     *
     */
    List<User> findAll();

    /**
     * 删除指定用户
     * @param username
     */
    void deleteUser(String username);

    /**
     * 更新用户信息
     * @param username
     */
    void updateUser(User user);

    /**
     * 用户登录时判断账号密码是否正确
     *
     * @param username
     * @param password
     * @return
     *//*
    boolean loginUser(String username, String password);*/
}
