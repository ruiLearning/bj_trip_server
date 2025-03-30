package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysComments;
import com.cow.horse.mapper.SysCommentsMapper;
import com.cow.horse.service.SysCommentsService;
import org.springframework.stereotype.Service;

@Service
public class SysCommentsServiceImpl extends ServiceImpl<SysCommentsMapper, SysComments> implements SysCommentsService {
}
