package com.rupeng.mapper;

import java.util.List;

import com.rupeng.pojo.User;

public interface UserMapper {

    List<User> select(User user);
}
