package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysHotelOrder;
import com.cow.horse.mapper.SysHotelOrderMapper;
import com.cow.horse.service.SysHotelOrderService;
import org.springframework.stereotype.Service;

@Service
public class SysHotelOrderServiceImpl extends ServiceImpl<SysHotelOrderMapper, SysHotelOrder> implements SysHotelOrderService {
}
