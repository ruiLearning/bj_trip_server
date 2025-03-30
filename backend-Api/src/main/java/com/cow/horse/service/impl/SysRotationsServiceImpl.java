package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysRotations;
import com.cow.horse.mapper.SysRotationsMapper;
import com.cow.horse.service.SysRotationsService;
import org.springframework.stereotype.Service;

@Service
public class SysRotationsServiceImpl extends ServiceImpl<SysRotationsMapper, SysRotations> implements SysRotationsService {
}
