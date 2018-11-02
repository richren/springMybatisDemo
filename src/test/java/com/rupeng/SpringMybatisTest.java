package com.rupeng;

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.rupeng.pojo.User;
import com.rupeng.service.UserService;

public class SpringMybatisTest {

    @Test
    public void test1() {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("/beans.xml");

        UserService userService = applicationContext.getBean(UserService.class);

        User user = new User();
        user.setId(3L);

        List<User> userList = userService.select(user);

        System.out.println(userList);
    }
}
