package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysLine;
import com.cow.horse.mapper.SysLineMapper;
import com.cow.horse.service.SysLineService;
import org.springframework.stereotype.Service;

@Service
public class SysLineServiceImpl extends ServiceImpl<SysLineMapper, SysLine> implements SysLineService {
}
