package com.example.controller;

import com.example.entity.Admin;
import com.example.mapper.AdminMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AdminController {

    @Autowired
    private AdminMapper adminMapper;

    @RequestMapping(path = "/login", method = RequestMethod.GET)
    public String login(String username, String password){
        Admin admin = adminMapper.selectByUsernameAndPassword(username, password);
        if (admin == null){
            return "failed";
        }
        return "success";
    }
}
