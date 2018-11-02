package com.rupeng.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rupeng.mapper.UserMapper;
import com.rupeng.pojo.User;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;

    public List<User> select(User user) {
        return userMapper.select(user);
    }

}
