package com.mp.dao;

import com.mp.BaseTest;
import com.mp.entity.PayInfo;
import com.mp.entity.User;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import static org.junit.Assert.assertEquals;

public class UserDaoTest extends BaseTest {
    @Autowired
    private UserMapper userMapper;
    @Test
    public void testQueryArea(){
        User user = userMapper.selectByPrimaryKey(1);
        System.out.println(user);
//        assertEquals(2);
    }
}
