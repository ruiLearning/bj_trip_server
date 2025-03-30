package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysFavor;
import com.cow.horse.mapper.SysFavorMapper;
import com.cow.horse.service.SysFavorService;
import org.springframework.stereotype.Service;

@Service
public class SysFavorServiceImpl extends ServiceImpl<SysFavorMapper, SysFavor> implements SysFavorService {
}
