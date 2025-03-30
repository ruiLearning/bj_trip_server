package com.cow.horse.handle;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.cow.horse.domain.User;
import com.cow.horse.utils.TokenUtils;
import com.cow.horse.service.UserService;
import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;


/**
 * 配置保存时自动插入创建时间和创建账号
 *
 * @author: cow
 * @date: 2023-11-10
 */
@Slf4j
@Component
public class MyMetaObjectHandler implements MetaObjectHandler {

    @Autowired
    private UserService userService;

    @Override
    public void insertFill(MetaObject metaObject) {
        log.info("公共字段自动填充[insert]...");
        String id = TokenUtils.getUserIdByToken();
        User user = userService.getById(id);
        metaObject.setValue("createTime", new Date());
        metaObject.setValue("updateTime", new Date());
        if (user != null) {
            metaObject.setValue("createBy", user.getUserName());
            metaObject.setValue("updateBy", user.getUserName());
        }
    }


    @Override
    public void updateFill(MetaObject metaObject) {
        log.info("公共字段自动填充[update]...");
        String id = TokenUtils.getUserIdByToken();
        User user = userService.getById(id);
        metaObject.setValue("updateTime", new Date());
        if (user != null) {
            metaObject.setValue("updateBy", user.getUserName());
        }
    }

}
