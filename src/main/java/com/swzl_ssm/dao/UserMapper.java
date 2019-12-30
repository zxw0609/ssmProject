package com.swzl_ssm.dao;

import com.swzl_ssm.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.stereotype.Repository;


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
     * @param u
     */
    void insertSelective(User u);
}