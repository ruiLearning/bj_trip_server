package com.cow.horse.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cow.horse.domain.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper extends BaseMapper<User> {

    /**
    * 分页查询用户
    */
    Page<User> getUserPage(Page<User> page, @Param("ew") User apeUser);

}
