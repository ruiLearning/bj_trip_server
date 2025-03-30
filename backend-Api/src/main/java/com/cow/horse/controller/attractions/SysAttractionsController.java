package com.cow.horse.controller.attractions;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.cow.horse.domain.Result;
import com.cow.horse.domain.SysAttractionOrder;
import com.cow.horse.domain.SysAttractions;
import com.cow.horse.domain.SysComments;
import com.cow.horse.enums.ResultCode;
import com.cow.horse.utils.JwtUtil;
import com.cow.horse.service.SysAttractionOrderService;
import com.cow.horse.service.SysAttractionsService;
import com.cow.horse.service.SysCommentsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 景点Controller
 *
 * @author: cow
 * @date: 2024-08-10
 */
@Controller
@ResponseBody
@RequestMapping("attractions")
public class SysAttractionsController {

    @Resource
    private SysAttractionsService sysAttractionsService;
    @Resource
    private SysAttractionOrderService sysAttractionOrderService;
    @Resource
    private SysCommentsService sysCommentsService;

    /** 分页获取景点 */
    @PostMapping("getSysAttractionsPage")
    public Result getSysAttractionsPage(@RequestBody SysAttractions sysAttractions) {
        Page<SysAttractions> page = new Page<>(sysAttractions.getPageNumber(),sysAttractions.getPageSize());
        QueryWrapper<SysAttractions> queryWrapper = new QueryWrapper<>();
        queryWrapper.lambda()
                .eq(sysAttractions.getState() != null,SysAttractions::getState,sysAttractions.getState())
                .like(StringUtils.isNotBlank(sysAttractions.getName()),SysAttractions::getName,sysAttractions.getName())
                .orderByDesc(SysAttractions::getCreateTime);
        Page<SysAttractions> sysAttractionsPage = sysAttractionsService.page(page, queryWrapper);
        return Result.success(sysAttractionsPage);
    }

    @GetMapping("getSysAttractionsList")
    public Result getSysAttractionsList() {
        List<SysAttractions> attractionsList = sysAttractionsService.list();
        return Result.success(attractionsList);
    }

    @GetMapping("getSysAttractionsIndex")
    public Result getSysAttractionsIndex(HttpServletRequest request) {
        String userId = JwtUtil.getUserIdByToken(request);
        List<SysAttractions> sysAttractions = sysAttractionsService.searchAttractions(userId);
        return Result.success(sysAttractions);
    }

    /** 根据id获取景点 */
    @GetMapping("getSysAttractionsById")
    public Result getSysAttractionsById(@RequestParam("id")String id) {
        SysAttractions sysAttractions = sysAttractionsService.getById(id);
        return Result.success(sysAttractions);
    }

    /** 保存景点 */
    @PostMapping("saveSysAttractions")
    public Result saveSysAttractions(@RequestBody SysAttractions sysAttractions) {
        boolean save = sysAttractionsService.save(sysAttractions);
        if (save) {
            return Result.success();
        } else {
            return Result.fail(ResultCode.COMMON_DATA_OPTION_ERROR.getMessage());
        }
    }

    /** 编辑景点 */
    @PostMapping("editSysAttractions")
    public Result editSysAttractions(@RequestBody SysAttractions sysAttractions) {
        boolean save = sysAttractionsService.updateById(sysAttractions);
        if (save) {
            return Result.success();
        } else {
            return Result.fail(ResultCode.COMMON_DATA_OPTION_ERROR.getMessage());
        }
    }

    /** 删除景点 */
    @GetMapping("removeSysAttractions")
    @Transactional(rollbackFor = Exception.class)
    public Result removeSysAttractions(@RequestParam("ids")String ids) {
        if (StringUtils.isNotBlank(ids)) {
            String[] asList = ids.split(",");
            for (String id : asList) {
                sysAttractionsService.removeById(id);
                QueryWrapper<SysAttractionOrder> queryWrapper = new QueryWrapper<>();
                queryWrapper.lambda().eq(SysAttractionOrder::getAttractionsId,id);
                sysAttractionOrderService.remove(queryWrapper);
                QueryWrapper<SysComments> wrapper = new QueryWrapper<>();
                wrapper.lambda().eq(SysComments::getAttractionsId,id);
                sysCommentsService.remove(wrapper);
            }
            return Result.success();
        } else {
            return Result.fail("景点id不能为空！");
        }
    }

}
