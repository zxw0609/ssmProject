package com.swzl_ssm.controller;

import com.swzl_ssm.entity.User;
import com.swzl_ssm.service.UserService;
import org.apache.ibatis.javassist.expr.NewArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * @author zhangxw
 * @date 19/12/23 - 20:53
 */
@Controller
public class hello {
    @Autowired
    private UserService userService;

    @RequestMapping(path = "/hello")
    public String findById(String username) {
        User user =new User();
        user = userService.findById(username);
        System.out.println("查询成功...");
        System.out.println(user.toString());
        return "hello";
    }

    @RequestMapping(path = "/saveUser")
    public String saveUser(User u){
        userService.saveUser(u);
        System.out.println("添加成功...");
        return "hello";
    }

    @RequestMapping(path = "/findAll")
    public String findAll(){
        List<User> AllUser = new ArrayList<>();
        AllUser = userService.findAll();
        System.out.println("查询成功...");
        System.out.println(AllUser);
        return "hello";
    }

    @RequestMapping(path = "/deleteUser")
    public String deleteUser(String username){
        userService.deleteUser(username);
        System.out.println("删除成功...");
        return "hello";
    }

    @RequestMapping(path = "/updateUser")
    public String updateUser(User user){
        userService.updateUser(user);
        System.out.println("更新成功...");
        return "hello";
    }
}
