package com.swzl_ssm.controller;

import com.swzl_ssm.entity.User;
import com.swzl_ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author zhangxw
 * @date 19/12/23 - 20:53
 */
@Controller
public class hello {
    @Autowired
    private UserService userService;

    @RequestMapping(path = "/hello")
    public String findById(HttpServletRequest request, HttpServletResponse response,String username) {
        User user =new User();
        user = userService.findById(username);
        System.out.println(user.toString());
        return "hello";
    }

    @RequestMapping(path = "/saveUser")
    public String saveUser(User u){
        userService.saveUser(u);
        return "hello";
    }
}
