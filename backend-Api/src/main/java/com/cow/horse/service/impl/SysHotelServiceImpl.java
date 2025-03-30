package com.cow.horse.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.cow.horse.domain.SysHotel;
import com.cow.horse.mapper.SysHotelMapper;
import com.cow.horse.service.SysHotelService;
import org.springframework.stereotype.Service;

@Service
public class SysHotelServiceImpl extends ServiceImpl<SysHotelMapper, SysHotel> implements SysHotelService {
}
