package com.example.mapper;

import com.example.entity.Admin;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface AdminMapper {

    @Select("select * from admin where username = #{username} and password = #{password}")
    Admin selectByUsernameAndPassword(@Param("username") String username, @Param("password") String password);
}
