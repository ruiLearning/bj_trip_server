package com.cow.horse.service.impl;

import cn.hutool.core.util.BooleanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.google.common.collect.Lists;
import com.cow.horse.domain.SysAttractions;
import com.cow.horse.domain.SysComments;
import com.cow.horse.mapper.SysAttractionsMapper;
import com.cow.horse.mapper.SysCommentsMapper;
import com.cow.horse.service.SysAttractionsService;
import com.cow.horse.utils.recommend.CoreMath;
import com.cow.horse.utils.recommend.dto.ProductDTO;
import com.cow.horse.utils.recommend.dto.RelateDTO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.*;

@Slf4j
@Service
public class SysAttractionsServiceImpl extends ServiceImpl<SysAttractionsMapper, SysAttractions> implements SysAttractionsService {

    @Value("${useRecommend}")
    private Boolean userRecommend;

    @Resource
    private SysCommentsMapper sysCommentsMapper;

    @Resource
    private SysAttractionsMapper sysAttractionsMapper;

    @Override
    public List<SysAttractions> searchAttractions(String userId) {
        // 判断是否需要走推荐算法
        if (BooleanUtil.isFalse(userRecommend)) {
            QueryWrapper<SysAttractions> queryWrapper = new QueryWrapper<>();
            queryWrapper.lambda().eq(SysAttractions::getState, 1).last("limit 3");
            return this.list(queryWrapper);
        } else {
            return recommendAttractions(userId);
        }
    }

    /**
     * 获取推荐的景点
     */
    private List<SysAttractions> recommendAttractions(String userId) {
        CoreMath coreMath = new CoreMath();
        List<RelateDTO> relateDTOList = generateRelates(); // 获取用户与商品的关系数据
        // 执行推荐算法
        List<String> recommendations = coreMath.recommend(userId, relateDTOList);

        // 如果推荐结果为空，返回空列表
        if (recommendations.isEmpty()) {
            return Collections.emptyList();
        }

        // 获取所有商品信息
        List<ProductDTO> productDTOList = generateProducts().stream()
                .filter(product -> recommendations.contains(product.getProductId())) // 过滤出推荐的商品
                .collect(Collectors.toList());

        // 通过商品ID获取景点信息
        List<SysAttractions> sysAttractions = new ArrayList<>();
        List<String> productIdList = productDTOList.stream()
                .map(ProductDTO::getProductId)
                .collect(Collectors.toList());

        // 根据商品Id获取景点
        for (String productId : productIdList) {
            SysAttractions attraction = sysAttractionsMapper.selectById(productId);
            if (attraction != null) {
                sysAttractions.add(attraction); // 确保添加有效的景点
            }
        }

        // 返回最终推荐的景点列表
        return sysAttractions;
    }

    /**
     * 获取相关的所有评论数据
     *
     * @return 相关评论数据
     */
    private List<RelateDTO> generateRelates() {
        //查询所有商品的评论
        List<SysComments> comments = sysCommentsMapper.selectList(Wrappers.emptyWrapper());
        List<RelateDTO> relateDTOList = Lists.newArrayList();
        for (SysComments sysComment : comments) {
            RelateDTO relateDTO = new RelateDTO();
            relateDTO.setUserId(sysComment.getUserId());
            relateDTO.setProductId(sysComment.getAttractionsId());
            relateDTO.setIndex(sysComment.getScore());
            relateDTOList.add(relateDTO);
        }
        if (CollectionUtils.isEmpty(relateDTOList)) {
            log.info("--------------------List<RelateDTO>为空！");
        }

        return relateDTOList;
    }

    /**
     * 获取相关的所有业务数据
     *
     * @return 相关数据
     */
    private List<ProductDTO> generateProducts() {
        List<ProductDTO> productDTOList = new ArrayList<>();
        List<SysAttractions> sysAttractions = sysAttractionsMapper.selectList(Wrappers.emptyWrapper());
        for (SysAttractions sysAttraction : sysAttractions) {
            ProductDTO productDTO = new ProductDTO();
            productDTO.setProductId(sysAttraction.getId());
            productDTO.setProductPrice(sysAttraction.getPrice());
            productDTOList.add(productDTO);
        }
        if (CollectionUtils.isEmpty(productDTOList)) {
            log.info("----------------------List<ProductDTO>为空！");
        }
        return productDTOList;
    }

}
