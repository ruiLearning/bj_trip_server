package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysForum;
import com.cow.horse.mapper.SysForumMapper;
import com.cow.horse.service.SysForumService;
import org.springframework.stereotype.Service;

@Service
public class SysForumServiceImpl extends ServiceImpl<SysForumMapper, SysForum> implements SysForumService {
}
