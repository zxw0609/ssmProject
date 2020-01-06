package com.swzl_ssm.dao;

import com.swzl_ssm.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper {
    /**
     * 查询单个用户 通过username
     * @param username
     * @return
     */
    User selectByPrimaryKey(String username);

    /**
     * 保存用户信息
     * @param user
     */
    void insertSelective(User user);

    /**
     * 查询全部信息
     *
     */
    List<User> findAll();

    /**
     * 删除用户信息
     * @param Username
     */
    void deleteByPrimaryKey(String username);

    /**
     * 更新用户信息
     * @param user
     */
    void updateByPrimaryKeySelective(User user);
}