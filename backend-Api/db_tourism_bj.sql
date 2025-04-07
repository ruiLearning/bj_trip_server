/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : db_tourism

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 08/09/2024 18:09:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_attraction_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_attraction_order`;
CREATE TABLE `sys_attraction_order`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attractions_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `num` int NULL DEFAULT NULL COMMENT '人数',
  `time` datetime NULL DEFAULT NULL COMMENT '预约时间',
  `people` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '信息',
  `state` int NULL DEFAULT 0 COMMENT '状态',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点预约' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_attraction_order
-- ----------------------------
INSERT INTO `sys_attraction_order` VALUES ('1777693570686365698', '1777682811382247426', '故宫博物院', '故宫博物院，旧称紫禁城，位于北京中轴线的中心，是中国明清两代的皇家宫殿，也是世界现存规模最大、保存最为完整的木质结构古建筑群之一。故宫有大小宫殿七十多座，房屋九千余间，以太和、中和、保和三大殿为中心。', 'http://10.149.4.59:8080/img/1712667548889aed8e60110a0af8d41c1c87129e7a556.jpeg,http://10.149.4.59:8080/img/17126675518427015587d4d51e9dc36a7761cc137de86.jpg,http://10.149.4.59:8080/img/17126675547546c9ccd113798c044b827d29dcfcbf8ef.jpeg', 1, '2024-04-10 08:00:00', '[{\"name\":\"张三\",\"tel\":\"156165\",\"idCard\":\"15616\"}]', 5, '0de96461b6ef0328cef416dea9366c9c', '张三', '2024-04-09 21:42:30', '超级管理员', '2024-06-13 15:10:24');
INSERT INTO `sys_attraction_order` VALUES ('1801138801459675137', '1777682811382247420', '八达岭长城', '八达岭长城位于北京市延庆区军都山关沟古道北口，是万里长城的重要组成部分，是明长城的一个隘口。其地势险要，山峦重叠，形势险要。古人有“自八达岭下视居庸关，如建瓴，如窥井”“居庸之险，不在关城，而在八达岭”之说。', 'http://10.149.4.59:8080/img/17182482910148dd708bdc56328da50049d62f273ec6c.jpg,http://10.149.4.59:8080/img/17182482938511cafc32a4942a298b0abb5d1fbf36a05.jpg,http://10.149.4.59:8080/img/17182482968236ef601f8e2d1b2fbd4af398e692bd8d6.jpg,http://10.149.4.59:8080/img/171824830060463ac3db55ac981e30b8cf5bcfbc78f7f.jpeg', 1, '2024-06-13 08:00:00', '[{\"name\":\"张三\",\"tel\":\"3123456\",\"idCard\":\"3123456\"}]', 5, '1697436716646531073', '超级管理员', '2024-06-13 14:25:28', '超级管理员', '2024-06-13 15:10:25');
INSERT INTO `sys_attraction_order` VALUES ('1801149357440712706', '1777682811382247421', '颐和园', '颐和园，中国清朝时期皇家园林，前身为清漪园，坐落在北京西郊，距城区15公里，全园占地3.009平方公里（其中颐和园世界文化遗产区面积是2.97平方公里 ），水面约占四分之三。它是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”。', 'http://10.149.4.59:8080/img/1718248549609fcd4c968d893ad44ed8c59bbfb5e4bc7.jpg,http://10.149.4.59:8080/img/171824855271091313dec5bb6bb30bfb544ea3622569e.jpeg,http://10.149.4.59:8080/img/1718248555800e18cd13c7cb614f7348cd42d632b5557.jpeg,http://10.149.4.59:8080/img/1718248558988454bfdbb42edc8429e0b8d051c236059.jpeg', 1, '2024-06-13 08:00:00', '[{\"name\":\"张三\",\"tel\":\"123456465\",\"idCard\":\"123456465\"}]', 5, '0de96461b6ef0328cef416dea9366c9c', '张三', '2024-06-13 15:07:25', '超级管理员', '2024-06-13 15:10:26');
INSERT INTO `sys_attraction_order` VALUES ('1832713913070292994', '1777682811382247422', '天坛公园', '天坛公园，在北京市南部，东城区永定门内大街东侧。占地约273万平方米。天坛始建于明永乐十八年（1420年），清乾隆、光绪时曾重修改建。为明、清两代帝王“祭天”“祈谷”之地。坛域北呈圆形，南为方形，寓意“天圆地方”。', 'http://10.149.4.59:8080/img/1718248611854dc1ac987a85ab49900ef94b584261ecd.jpeg,http://10.149.4.59:8080/img/17182486146997a6e7831cdac11b328009c1b109be64d.jpg', 1, '2024-09-09 08:00:00', '[{\"name\":\"啥\",\"tel\":\"13275605307\",\"idCard\":\"111\"}]', 0, '0de96461b6ef0328cef416dea9366c9c', 'haha', '2024-09-08 17:33:42', 'haha', '2024-09-08 17:33:42');
INSERT INTO `sys_attraction_order` VALUES ('1832714286736642050', '1777682811382247424', '圆明园', '圆明园坐落在北京西北郊，与颐和园相邻，由圆明园、长春园和绮春园组成，也叫圆明三园。圆明园是清朝著名的皇家园林之一，面积五千二百余亩，一百五十余景。建筑面积达16万平方米，有“万园之园”之称。清帝每到盛夏就来到这里避暑、听政，处理军政事务，因此也称“夏宫”。', 'http://10.149.4.59:8080/img/1718248698906ce95bd25319f3f9d3d457dc569738744.jpeg,http://10.149.4.59:8080/img/1718248702004c7127ce2cd6dc4ccc326d71e43af3628.jpg', 1, '2024-09-06 08:00:00', '[{\"name\":\"珊珊\",\"tel\":\"16756348908\",\"idCard\":\"66666\"}]', 3, '0de96461b6ef0328cef416dea9366c9c', 'haha', '2024-09-08 17:35:11', '超级管理员', '2024-09-08 18:06:35');
INSERT INTO `sys_attraction_order` VALUES ('1832716200194904066', '1777682811382247422', '天坛公园', '天坛公园，在北京市南部，东城区永定门内大街东侧。占地约273万平方米。天坛始建于明永乐十八年（1420年），清乾隆、光绪时曾重修改建。为明、清两代帝王“祭天”“祈谷”之地。坛域北呈圆形，南为方形，寓意“天圆地方”。', 'http://10.149.4.59:8080/img/1718248611854dc1ac987a85ab49900ef94b584261ecd.jpeg,http://10.149.4.59:8080/img/17182486146997a6e7831cdac11b328009c1b109be64d.jpg', 1, '2024-09-09 08:00:00', '[{\"name\":\"shansha\",\"tel\":\"19856033557\",\"idCard\":\"555555\"}]', 4, '0de96461b6ef0328cef416dea9366c9c', 'haha', '2024-09-08 17:42:47', '超级管理员', '2024-09-08 18:06:37');
INSERT INTO `sys_attraction_order` VALUES ('1832721642354675713', '1777682811382247420', '八达岭长城', '八达岭长城位于北京市延庆区军都山关沟古道北口，是万里长城的重要组成部分，是明长城的一个隘口。其地势险要，山峦重叠，形势险要。古人有“自八达岭下视居庸关，如建瓴，如窥井”“居庸之险，不在关城，而在八达岭”之说。', 'http://10.149.4.59:8080/img/172577840121211.jpg', 1, '2024-09-09 08:00:00', '[{\"name\":\"haha\",\"tel\":\"13275605307\",\"idCard\":\"444\"}]', 0, '0de96461b6ef0328cef416dea9366c9c', 'haha', '2024-09-08 18:04:25', 'haha', '2024-09-08 18:04:25');

-- ----------------------------
-- Table structure for sys_attractions
-- ----------------------------
DROP TABLE IF EXISTS `sys_attractions`;
CREATE TABLE `sys_attractions`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `num` int NULL DEFAULT NULL COMMENT '库存',
  `real_name` int NULL DEFAULT 0 COMMENT '实名',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `open` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约须知',
  `time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入园时间',
  `state` int NULL DEFAULT 0 COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_attractions
-- ----------------------------

-- 插入北京景点数据
INSERT INTO `sys_attractions` VALUES
('1777682811382247430', '故宫', 100.00, '故宫作为明清两代皇家宫殿，旧称紫禁城，雄踞于北京中轴线核心位置。其以三大殿为中心，占地约72万平方米，建筑面积达15万平方米，拥有大小宫殿七十多座。据1973年专家实地测量，故宫房间数量为8707间，承载着深厚的历史文化底蕴。', '故宫作为明清两代皇家宫殿，旧称紫禁城，雄踞于北京中轴线核心位置。其以三大殿为中心，占地约72万平方米，建筑面积达15万平方米，拥有大小宫殿七十多座。据1973年专家实地测量，故宫房间数量为8707间，承载着深厚的历史文化底蕴。', 100, 1, 'http://10.149.4.59:8080/img/1718248658534dd88a8657aa9548d402020ad04df0b01.jpeg', '景区提倡文明出行,请游客朋友们自觉爱护景区花草树木,不攀爬折枝、不采挖植物、不破坏设施标牌,不随地吐痰、不乱扔垃圾。', '全天', 1, '超级管理员', '2024-04-09 20:59:45', '超级管理员', '2024-06-13 11:17:40'),
('1777682811382247431', '八达岭长城', 100.00, '八达岭长城位于北京延庆区军都山关沟古道北口，是万里长城的重要组成部分，为居庸关的重要前哨，古称“居庸之险不在关而在八达岭”。其地势险要，山峦重叠，形势险要，宛如巨龙盘踞山间，见证了无数的历史风云。', '八达岭长城位于北京延庆区军都山关沟古道北口，是万里长城的重要组成部分，为居庸关的重要前哨，古称“居庸之险不在关而在八达岭”。其地势险要，山峦重叠，形势险要，宛如巨龙盘踞山间，见证了无数的历史风云。', 100, 1, 'http://10.149.4.59:8080/img/17126682513336e3de1e3cf2076572d30172af7b591b3.jpg', '景区提倡文明出行,请游客朋友们自觉爱护景区花草树木,不攀爬折枝、不采挖植物、不破坏设施标牌,不随地吐痰、不乱扔垃圾。', '全天', 1, '超级管理员', '2024-04-09 20:59:45', '超级管理员', '2024-06-13 11:17:41'),
('1777682811382247432', '颐和园', 100.00, '颐和园坐落在北京西郊，是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，尽显皇家园林的大气与精致。', '颐和园坐落在北京西郊，是以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，也是保存最完整的一座皇家行宫御苑，被誉为“皇家园林博物馆”，尽显皇家园林的大气与精致。', 100, 1, 'http://10.149.4.59:8080/img/1712667548889aed8e60110a0af8d41c1c87129e7a556.jpeg', '景区提倡文明出行,请游客朋友们自觉爱护景区花草树木,不攀爬折枝、不采挖植物、不破坏设施标牌,不随地吐痰、不乱扔垃圾。', '全天', 1, '超级管理员', '2024-04-09 20:59:45', '超级管理员', '2024-06-13 11:17:42');
-- ----------------------------
-- Table structure for sys_comments
-- ----------------------------
DROP TABLE IF EXISTS `sys_comments`;
CREATE TABLE `sys_comments`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `attractions_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景点id',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `score` int NULL DEFAULT 0 COMMENT '评分',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '景点评论' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_comments
-- ----------------------------
INSERT INTO `sys_comments` VALUES ('1832721390901956610', '11', '1777682811382247420', '0de96461b6ef0328cef416dea9366c9c', '/img/1725789568801.jpg', 'haha', '2024-09-08 18:03:25', 'haha', '2024-09-08 18:03:25', 5);
INSERT INTO `sys_comments` VALUES ('1832721490931912705', '2222', '1777682811382247420', '0de96461b6ef0328cef416dea9366c9c', '/img/1725789568801.jpg', 'haha', '2024-09-08 18:03:48', 'haha', '2024-09-08 18:03:48', 5);
INSERT INTO `sys_comments` VALUES ('1832721663124869122', '6666', '1777682811382247420', '0de96461b6ef0328cef416dea9366c9c', '/img/1725789568801.jpg', 'haha', '2024-09-08 18:04:29', 'haha', '2024-09-08 18:04:29', 5);

-- ----------------------------
-- Table structure for sys_favor
-- ----------------------------
DROP TABLE IF EXISTS `sys_favor`;
CREATE TABLE `sys_favor`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `line_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路线id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_favor
-- ----------------------------

-- 插入北京景点相关数据
INSERT INTO `sys_favor` VALUES
('1777692428418002945', '1777685922071031810', '万人打卡故宫，感受历史韵味', '周末假期，故宫迎来大批游客，每日接待上万人。游客们漫步在红墙黄瓦之间，沉浸式感受明清皇家宫殿的深厚历史底蕴与独特建筑魅力。', 'http://10.149.4.59:8080/img/gugong_main.jpg', '0de96461b6ef0328cef416dea9366c9c'),
('1801138004348977154', '1801096132717002755', '【2024北京游玩攻略】5分钟看懂，畅玩北京不迷路！', '出游时间：四季皆可，春季赏花，夏季避暑，秋季赏叶，冬季看雪；北京游玩线路选择：故宫 - 天安门广场 - 颐和园 - 八达岭长城等经典线路；游玩费用：以一周为例，自由行不做攻略约6千 - 8千/人，精心规划约5千 - 7千/人，如果找靠谱当地团大约3千 - 5千/人。', 'http://10.149.4.59:8080/img/beijing_all.jpg', '1697436716646531073'),
('1832721735367561218', '1801096132717002755', '【2024北京游玩攻略】5分钟看懂，畅玩北京不迷路！', '出游时间：四季皆可，春季赏花，夏季避暑，秋季赏叶，冬季看雪；北京游玩线路选择：故宫 - 天安门广场 - 颐和园 - 八达岭长城等经典线路；游玩费用：以一周为例，自由行不做攻略约6千 - 8千/人，精心规划约5千 - 7千/人，如果找靠谱当地团大约3千 - 5千/人。', 'http://10.149.4.59:8080/img/beijing_winter.jpg', '0de96461b6ef0328cef416dea9366c9c');


-- ----------------------------
-- Table structure for sys_forum
-- ----------------------------
DROP TABLE IF EXISTS `sys_forum`;
CREATE TABLE `sys_forum`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资讯' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_forum
-- ----------------------------
INSERT INTO `sys_forum` VALUES
('1777689383319744513', '故宫深度游攻略',
'<p>一、景点概况</p>
<p>故宫，作为明清两代的皇家宫殿，旧称紫禁城，位于北京中轴线的中心。它以三大殿为中心，占地面积约72万平方米，建筑面积约15万平方米，拥有大小宫殿七十多座，房间8707间。故宫不仅是中国古代建筑艺术的瑰宝，更是中华民族历史文化的重要象征。</p>
<p>二、景区交通攻略</p>
<p>前往故宫，可以选择多种交通方式。若选择公共交通，可乘坐地铁1号线到天安门东站或西站，然后步行前往。也可乘坐多路公交车到达东华门或西华门附近站点。如果选择自驾，需注意周边停车位紧张，建议提前规划停车地点。</p>
<p>三、游玩行程</p>
<p>建议游客早上8点左右出发，提前预约好门票，9点左右入宫。首先游览太和殿、中和殿、保和殿三大殿，感受皇家的威严与庄重。接着参观乾清宫、交泰殿、坤宁宫后三宫，了解皇家的生活起居。之后可漫步东西六宫，欣赏宫廷建筑与文物展览。最后从神武门出宫，结束行程。出宫后可在附近品尝老北京特色美食。</p>
<p>四、美食推荐</p>
<p>游玩故宫后，不妨品尝北京的特色美食。如北京烤鸭，皮脆肉嫩，香气四溢；炸酱面，筋道的面条搭配香浓的炸酱和爽口的菜码；还有豆汁儿、焦圈等传统小吃，体验老北京的独特风味。</p>
<p>五、开放时间</p>
<p>故宫的开放时间通常为上午8:30 - 下午5:00（下午4:00停止进馆）。不过，如遇法定节假日或特殊活动，开放时间可能会有所调整，游客需提前关注官方信息。</p>
<p>六、注意事项</p>
<p>在故宫游玩时，要遵守景区规定，不触摸文物，不攀爬建筑。由于故宫内游客较多，要注意保管好个人财物。同时，为保护古建筑，景区内禁止吸烟。</p>',
'超级管理员', '2024-04-09 21:25:52', '超级管理员', '2024-04-09 21:25:52');

INSERT INTO `sys_forum` VALUES
('1801138261086519297', '北京热门景点带动周边经济发展',
'<p class="ql-align-justify">今年以来，北京多个热门景点带动周边经济快速发展。以故宫、八达岭长城、颐和园等为代表的知名景区，吸引了大量国内外游客。随着游客数量的增加，周边的酒店、餐饮、购物等行业迎来了繁荣发展。</p>
<p class="ql-align-justify"><strong>景点带动多行业繁荣</strong></p>
<p class="ql-align-justify">北京丰富的历史文化资源和现代化的建筑景观，吸引着世界各地的旅行者。以故宫为例，仅今年五一假期，参观人数就突破了每日限流上限，周边酒店的入住率也达到了90%以上。</p>
<p class="ql-align-justify">据统计，今年第一季度，八达岭长城接待游客超过200万人次，同比增长25%。周边餐饮店铺的收入平均增长了30%，旅游纪念品商店的销售额也大幅提升。</p>
<p class="ql-align-justify">颐和园凭借其优美的湖光山色，今年前5个月接待游客超过500万人次，带动周边交通、住宿等相关产业收入增长显著。</p>
<p class="ql-align-justify">随着北京旅游业的持续升温，相关行业提供了更多的就业机会，促进了区域经济的发展。</p>
<p class="ql-align-justify"><strong>提升景点可持续发展能力</strong></p>
<p class="ql-align-justify">为了促进北京旅游业的可持续发展，各景点纷纷采取措施提升服务质量和景区环境。故宫博物院不断优化参观路线，增加文物展示和讲解服务，同时加强对古建筑的保护。</p>
<p class="ql-align-justify">八达岭长城景区加大了对基础设施的投入，改善了游客服务中心，增加了环保设施。并且，景区还推出了多种特色旅游项目，如长城夜游、长城文化体验活动等。</p>
<p class="ql-align-justify">颐和园积极推进数字化建设，开发了线上导览系统，方便游客了解景点历史文化。同时，加强了对园内生态环境的保护，提升了游客的游览体验。</p>
<p class="ql-align-justify"><strong>外地游客助力北京旅游业发展</strong></p>
<p class="ql-align-justify">北京作为中国的首都，吸引了大量外地游客。尤其是来自长三角、珠三角地区的游客，成为北京旅游市场的重要组成部分。</p>
<p class="ql-align-justify">为了吸引更多外地游客，北京各大景区与旅行社加强合作，推出了多种优惠政策和特色旅游线路。同时，改善交通便利性，加强旅游宣传推广，提升北京旅游的知名度和吸引力。</p>',
'超级管理员', '2024-06-13 14:23:20', '超级管理员', '2024-06-13 14:23:20');

INSERT INTO `sys_forum` VALUES
('1801138327436214274', '北京端午假期旅游市场情况',
'<p>北京市文旅局发布消息，端午假期期间，全市接待游客人次达到了450万人次，同比增长30%。旅游总花费达到了350000万元，同比增长38%。市内多家星级饭店的入住率达到了45%。</p>
<p>端午假期，北京旅游市场呈现出强劲的增长态势。旅游人次的增长得益于假期天气宜人、丰富的民俗活动以及各景点推出的特色活动。</p>
<p>在这个假期，本地游和周边游依旧热门，许多市民选择自驾前往郊区的古北水镇、怀柔雁栖湖等景点。同时，故宫、天安门广场等传统热门景点也吸引了大量外地游客。</p>
<p>各景点举办了丰富多彩的端午民俗活动，如故宫举办的端午文化展，展示了古代宫廷的端午习俗；颐和园开展的端午龙舟体验活动，让游客亲身体验传统民俗的乐趣。这些活动受到了游客的广泛好评。</p>
<p>随着暑假旅游高峰的临近，预计北京旅游市场将继续保持繁荣，相关部门将进一步加强旅游市场监管，提升服务质量，为游客提供更好的旅游体验。</p>',
'超级管理员', '2024-06-13 14:23:35', '超级管理员', '2024-06-13 14:23:35');

INSERT INTO `sys_forum` VALUES
('1801138410303078402', '北京乡村旅游数字化发展行动',
'<p>北京乡村旅游数字提升行动是北京市促进数字经济与乡村旅游深度融合的重要举措。旨在通过新兴技术与乡村旅游资源相结合，推动乡村旅游产业转型升级，培育新型消费模式，吸引更多社会力量参与乡村旅游发展，促进城乡融合与共同富裕。</p>
<p>自2023年开展以来，该行动通过举办线上推广活动、建设数字乡村旅游平台、培训乡村旅游从业者等方式，覆盖了北京周边多个区县的乡村旅游经营主体。直接带动乡村游客近100万人次，探索出一条“乡村旅游 + 数字经济”的特色发展路径。</p>
<p>2024年，北京乡村旅游数字提升行动进一步扩大规模，整合更多优质资源。与多家互联网平台合作，助力乡村文旅实现数字化转型。将持续推进乡村旅游数字提升项目，打造更多乡村旅游新业态，如线上虚拟游、智能导览等，提升游客的乡村旅游体验，激发乡村旅游的发展潜力。</p>',
'超级管理员', '2024-06-13 14:23:55', '超级管理员', '2024-06-13 14:23:55');

INSERT INTO `sys_forum` VALUES
('1801138479702032385', '五一北京出行数据及旅游亮点',
'<p>五一假期结束，北京市文旅局发布的数据显示，全市国内旅游出游人次达到3500万，较去年同期增长8%，与2019年同期相比增长30%。国内游客出游总花费高达200亿元，同比增长15%，较2019年同期增长18%。</p>
<p>五一期间，北京的文旅活动精彩纷呈。故宫博物院举办了“明清宫廷生活展”，展示了大量珍贵文物，吸引了众多游客排队参观。天安门广场的升旗仪式，每天都吸引数万名游客前来观看，感受庄严的氛围。</p>
<p>同时，北京的文化演出市场也十分火爆。各大剧院上演了歌剧、舞剧、话剧等多种形式的演出，满足了游客的多元文化需求。</p>
<p>此外，北京的旅游消费持续升温。各大商场、商业街推出了丰富的促销活动，吸引游客购物消费。旅游与消费的双重带动，为北京的经济发展注入了强大动力。</p>',
'超级管理员', '2024-06-13 14:24:12', '超级管理员', '2024-06-13 14:24:12');

INSERT INTO `sys_forum` VALUES
('1801138561998471169', '北京吸引外国游客的魅力所在',
'<p class="ql-align-justify"><strong>随着全球旅游业的复苏，北京以其独特的魅力吸引着越来越多的外国游客。</strong></p>
<p class="ql-align-justify">北京丰富的历史文化遗产，如故宫、长城、颐和园等，是吸引外国游客的重要因素。这些古老的建筑和文化遗址，让外国游客深入了解中国悠久的历史和灿烂的文化。</p>
<p class="ql-align-justify">同时，北京现代化的城市风貌也极具吸引力。现代化的高楼大厦、便捷的交通设施、丰富多样的国际美食，都让外国游客感受到这座城市的活力与包容。</p>
<p class="ql-align-justify">此外，北京不断提升的旅游服务质量也为外国游客提供了更好的旅游体验。许多景区配备了多语言的导览服务，酒店和餐厅也更加注重国际化服务标准。</p>
<p class="ql-align-justify">据统计，今年上半年，来北京旅游的外国游客数量同比增长25%，其中来自欧美、亚洲其他国家的游客增长较为明显。</p>',
'超级管理员', '2024-06-13 14:24:31', '超级管理员', '2024-06-13 14:24:31');

INSERT INTO `sys_forum` VALUES
('1801138629505794049', '北京端午假日文化旅游市场亮点',
'<p>2024年“端午”假日期间，北京市积极做好文旅市场监管、安全生产、值班值守等各项服务保障工作。假日期间，全市文旅活动丰富多彩，旅游市场平稳有序。</p>
<p>精心策划宣传活动。节前通过各大媒体平台推出《端午来北京，感受古韵今风》《北京端午精品旅游线路推荐》等内容，及时发布北京“端午”假日重大活动信息及旅游攻略。节假日期间，央视报道了北京端午期间在颐和园举办的龙舟表演活动，展示了传统与现代结合的端午氛围。</p>
<p>用心筹备特色活动。故宫举办了端午宫廷文化体验活动，游客可以参与传统投壶、斗草等游戏，感受古代宫廷的端午习俗。八达岭长城推出了“端午登长城，祈福迎安康”活动，吸引了大量游客。</p>
<p>全心做好服务保障。各景区加强了游客疏导和安全管理，增加了临时卫生间、休息区等设施。同时，交通部门增加了节假日期间的运力，保障游客的出行顺畅。</p>',
'超级管理员', '2024-06-13 14:24:47', '超级管理员', '2024-06-13 14:24:47');

INSERT INTO `sys_forum` VALUES
('1801138708337737730', '整治北京热门景区周边乱象，守护旅游形象',
'<p>北京一些热门景区周边，近期出现了部分不良现象，影响了游客的旅游体验。如部分景区周边存在黑车拉客、小摊贩强买强卖等问题。</p>
<p>相关媒体曝光这些问题后，北京市政府高度重视，立即成立专项整治联合工作组。对涉事的黑车司机进行严厉处罚，取缔违规经营的小摊贩。同时，加强对景区周边的巡查力度，建立长效监管机制。</p>
<p>北京作为重要的旅游城市，景区形象关乎城市的整体形象。相关部门表示，将进一步加强监管，创新监管方式，通过智慧旅游平台实时监控景区周边情况，及时处理游客投诉。同时，加强对旅游从业者的培训和教育，提升服务质量，为游客营造良好的旅游环境。</p>',
'超级管理员', '2024-06-13 14:25:06', '超级管理员', '2024-06-13 14:25:06');


-- ----------------------------
-- Table structure for sys_hotel
-- ----------------------------
DROP TABLE IF EXISTS `sys_hotel`;
CREATE TABLE `sys_hotel`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `attractions_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景区id',
  `attractions` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '景区',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `state` int NULL DEFAULT 0 COMMENT '状态',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_hotel
-- ----------------------------
INSERT INTO `sys_hotel` VALUES
('1777686297926807550', '1777682811382247430', '故宫', '紫禁城畔·御景酒店', '东城区 | 距故宫步行800米', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。酒店融合了传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。\n踏入酒店，仿佛穿越回古代的府邸，却又能享受到现代的便捷。酒店拥有多种特色房型，从温馨舒适的标准间到豪华宽敞的套房，满足不同宾客的需求。\n酒店地理位置优越，周边交通便利，紧邻地铁站，且有多条公交线路经过。不仅如此，酒店还提供贴心的旅游咨询服务，为您规划故宫及周边景点的游览路线，助您深度领略北京的历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 11:43:54');

INSERT INTO `sys_hotel` VALUES
('1777686297926807551', '1777682811382247430', '故宫', '宫韵雅舍客栈', '东城区 | 距故宫步行1.1公里', '客栈秉持中式简约风格，营造出宁静祥和的氛围，让您在繁忙的都市中寻得一片静谧之地。客房空间宽敞，配备智能设备，如智能马桶、高清投影设备，以及高品质的床垫，为您带来舒适的睡眠体验。\n房间类型丰富多样，有适合情侣的温馨大床房、适合家庭出行的家庭套房等。客栈的公共区域设有雅致的茶室，您可以在这里免费品尝地道的中国茶，与来自各地的旅友交流旅行心得。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:13:14');

INSERT INTO `sys_hotel` VALUES
('1777686297926807552', '1777682811382247430', '故宫', '紫禁城逸居', '西城区 | 距故宫步行1.3公里', '本店位于故宫附近的繁华街区，周边生活设施齐全，步行几分钟即可到达热闹的商业街，且对面就是特色美食街。客房内24小时供应热水，提供高速稳定的独立网络，让您在游玩之余能尽情享受便捷的生活。我们期待您的光临，愿您拥有一段愉快的北京之旅！', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:14:05');

INSERT INTO `sys_hotel` VALUES
('1777686297926807553', '1777682811382247430', '故宫', '御园庭院酒店', '东城区 | 距故宫步行600米', '酒店设施完备，功能齐全，客房配备24小时热水、免费无线网络、电热毯、电吹风、电水壶等。酒店老板热情好客，均为北京本地资深旅游爱好者，他们乐于为游客提供个性化的旅行建议，无论是游览故宫的最佳路线，还是探寻北京的小众景点，都能给您满意的答复。\n酒店庭院充满老北京韵味，绿植环绕，宁静雅致。闲暇之时，您可以坐在庭院中，品味老北京的特色小吃，感受京城的悠闲时光。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:14:44');

INSERT INTO `sys_hotel` VALUES
('1777686297926807554', '1777682811382247430', '故宫', '紫禁印象·静雅花园酒店', '东城区 | 距故宫步行900米', '酒店位于故宫周边，交通便利，无论是前往天安门广场，还是其他北京著名景点都十分便捷。酒店环境优美，花园式的布局营造出宁静的氛围。步入酒店，您仿佛置身于一座宁静的园林，远离城市的喧嚣。\n酒店的休闲区提供高品质的服务，您可以在这里放松身心，享受悠闲时光。酒店还为客人精心准备了丰富的早餐，包含老北京特色美食，让您开启美好的一天。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:15:57');

INSERT INTO `sys_hotel` VALUES
('1777686297926807555', '1777682811382247430', '故宫', '御景之巅·全景酒店', '东城区 | 距故宫步行850米', '御景之巅酒店是周边较高的建筑之一，在酒店天台，清晨您可俯瞰故宫的宏伟全景，傍晚能欣赏京城的璀璨夜景。酒店天台还设有餐厅，为您提供丰盛的早餐和特色晚餐，让您在美景中享受美食。\n酒店工作人员服务热情周到，提供专业的旅游咨询和票务预订服务，帮助您轻松规划北京之行，让您的旅途更加顺畅。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:16:35');

INSERT INTO `sys_hotel` VALUES
('1777686297926807556', '1777682811382247430', '故宫', '太和逸居·精品设计酒店', '东城区 | 距故宫步行880米', '太和逸居精品设计酒店位于故宫附近的胡同内，距离故宫入口仅需步行几分钟。酒店配备先进的供暖和制冷系统、高端乳胶床垫、鹅绒被以及国际品牌的洗护用品，为您提供极致舒适的入住体验。\n酒店还设有宽敞的会议室，配备完善的会议设施，可满足商务旅客的需求。此外，酒店每日提供精致的早餐，包括中式和西式美食，让您的味蕾得到满足。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:17:29');

INSERT INTO `sys_hotel` VALUES
('1777686297926807557', '1777682811382247430', '故宫', '胡同里·古韵民宿', '东城区 | 距故宫步行860米', '民宿内四季花香四溢，环境清幽。装修风格融合了老北京胡同特色与现代时尚元素，相得益彰。您可以在花香弥漫的庭院中品茶聊天，在舒适的摇椅上享受阳光，感受老北京的独特韵味。\n每间客房都配备了冷暖空调、高清液晶电视、24小时恒温热水，以及优质的洗漱用品。此外，民宿还提供自助洗衣服务，方便您的出行。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:18:22');

INSERT INTO `sys_hotel` VALUES
('1777686297926807558', '1777682811382247430', '故宫', '皇家雅舍·静逸客栈', '东城区 | 距故宫步行870米', '客栈地处故宫中心位置附近，为新中式中高端客栈。距离故宫主要景点仅需几分钟路程，周边还有众多传统的北京小吃店和特色手工艺品店。\n客栈拥有多个庭院，环境优雅，设有独立的厨房、餐厅和茶室。客房设施齐全，配备高端乳胶床垫、智能洁具，以及全屋智能控制系统，为您带来便捷舒适的入住体验。整体风格典雅大气，彰显老北京的韵味，是您来北京旅游的理想下榻之地。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:19:04');

INSERT INTO `sys_hotel` VALUES
('1777686297926807559', '1777682811382247430', '故宫', '紫禁城尊邸·奢华酒店', '东城区 | 距故宫步行840米', '酒店紧邻故宫，位于国家5A级风景区内。独栋建筑设计，视野开阔，让您可以尽情领略故宫的雄伟与庄严。酒店由国际知名设计师精心打造，将传统皇家元素与现代奢华风格完美融合。\n酒店周边餐饮、购物设施一应俱全，出行极为便利。酒店提供一对一的专属管家服务，24小时为您解决各种需求，确保您的北京之行舒适无忧。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '超级管理员', '2024-04-09 21:13:36', '超级管理员', '2024-06-13 14:19:50');



-- ----------------------------
-- Table structure for sys_hotel_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_hotel_item`;
CREATE TABLE `sys_hotel_item`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店id',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `num` int NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_hotel_item
-- ----------------------------
INSERT INTO `sys_hotel_item` VALUES ('1777686363106291713', '1777686297926807550', '标准间', 100.00, 8);
INSERT INTO `sys_hotel_item` VALUES ('1777686400964079617', '1777686297926807550', '大床房', 200.00, 8);
INSERT INTO `sys_hotel_item` VALUES ('1777686449932578817', '1777686297926807550', '家庭房', 300.00, 7);

-- ----------------------------
-- Table structure for sys_hotel_order
-- ----------------------------
DROP TABLE IF EXISTS `sys_hotel_order`;
CREATE TABLE `sys_hotel_order`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hotel_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '酒店id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '简介',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `num` int NULL DEFAULT NULL COMMENT '人数',
  `time` datetime NULL DEFAULT NULL COMMENT '预约时间',
  `people` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '信息',
  `state` int NULL DEFAULT 0 COMMENT '状态',
  `user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `item_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房型id',
  `item_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房型',
  `price` float(10, 2) NULL DEFAULT NULL COMMENT '价格',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '酒店预约' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_hotel_order
-- ----------------------------
INSERT INTO `sys_hotel_order` VALUES
('1801138914433253378', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-06-13 08:00:00', '{"name":"张三","tel":"4161651","idCard":"3123456"}', 5, '1697436716646531073', '1777686363106291713', '标准间', 100.00, '超级管理员', '2024-06-13 14:25:55', '超级管理员', '2024-06-13 15:10:38');

INSERT INTO `sys_hotel_order` VALUES
('1801149620947861506', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', '17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-06-13 08:00:00', '{"name":"张三","tel":"45615616","idCard":"45615616"}', 5, '0de96461b6ef0328cef416dea9366c9c', '1777686400964079617', '大床房', 200.00, '张三', '2024-06-13 15:08:28', '超级管理员', '2024-06-13 15:10:39');

INSERT INTO `sys_hotel_order` VALUES
('1822443506546884609', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-08-01 08:00:00', '{"name":"陈","tel":"1","idCard":"1"}', 0, '0de96461b6ef0328cef416dea9366c9c', '1777686363106291713', '标准间', 100.00, '杭州水果捞', '2024-08-11 09:22:46', '杭州水果捞', '2024-08-11 09:22:46');

INSERT INTO `sys_hotel_order` VALUES
('1832714029978128385', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-09-12 08:00:00', '{"name":"啥","tel":"13275605307","idCard":"4444"}', 0, '0de96461b6ef0328cef416dea9366c9c', '1777686449932578817', '家庭房', 300.00, 'haha', '2024-09-08 17:34:10', 'haha', '2024-09-08 17:34:10');

INSERT INTO `sys_hotel_order` VALUES
('1832714157371723778', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-09-04 08:00:00', '{"name":"珊珊","tel":"13275605307","idCard":"77777"}', 1, '0de96461b6ef0328cef416dea9366c9c', '1777686449932578817', '家庭房', 300.00, 'haha', '2024-09-08 17:34:40', '超级管理员', '2024-09-08 18:06:46');

INSERT INTO `sys_hotel_order` VALUES
('1832721809992617986', '1777686297926807550', '紫禁城畔·御景酒店', '酒店坐落于北京东城区繁华地段，临近故宫这一世界文化瑰宝。融合传统中式建筑风格与现代设计理念，外观古朴典雅，内部设施现代舒适。踏入酒店，仿若穿越回古代府邸，又能享受现代便捷。拥有多种特色房型，满足不同宾客需求。酒店地理位置优越，周边交通便利，紧邻地铁站且有多条公交线路经过。还提供贴心旅游咨询服务，助您规划故宫及周边景点游览路线，深度领略北京历史文化魅力。', 'http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg,http://10.149.4.59:8080/img/17182502321471mc6v12000d23xa7y9857_W_1080_808_R5_D.jpg', 1, '2024-09-10 08:00:00', '{"name":"啥","tel":"13275605307","idCard":"777"}', 0, '0de96461b6ef0328cef416dea9366c9c', '1777686449932578817', '家庭房', 300.00, 'haha', '2024-09-08 18:05:04', 'haha', '2024-09-08 18:05:04');


-- ----------------------------
-- Table structure for sys_line
-- ----------------------------
DROP TABLE IF EXISTS `sys_line`;
CREATE TABLE `sys_line`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `temperature` int NULL DEFAULT NULL COMMENT '温度',
  `geography` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地理情况',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `introduce` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '介绍',
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅游线路' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_line
-- ----------------------------
INSERT INTO `sys_line` VALUES ('1777685922071031810', 20, '北京', '探寻北京—“魅力京城”必游景点全攻略', '<p><span style="color: rgb(51, 51, 51);">北京作为历史悠久的古都，拥有众多闻名遐迩的景点。故宫承载着数百年的皇家历史，天安门广场庄严肃穆，是世界上最大的城市广场之一，八达岭长城更是雄伟壮观，宛如巨龙盘踞在群山之间。</span></p><p>故宫，旧称紫禁城，是中国明清两代的皇家宫殿，世界文化遗产。这里红墙黄瓦，金碧辉煌，宫殿建筑错落有致，漫步其中，仿佛能穿越时空，感受到古代皇家的威严与奢华。</p><p>天安门广场，每天清晨的升旗仪式庄严肃穆，吸引着无数游客前来观看。广场上人民英雄纪念碑、毛主席纪念堂等建筑，承载着深厚的历史意义。</p><p>八达岭长城，是万里长城的重要组成部分，地势险要，山峦重叠，形势险要。“不到长城非好汉”，登上长城，极目远眺，壮丽的景色尽收眼底。</p><p><img src="http://10.149.4.59:8080/img/beijing1.jpg"></p><p><strong style="color: rgb(51, 102, 255);">游玩注意事项</strong></p><p><span style="color: rgb(255, 0, 0);">◆</span> 北京旅游旺季游客众多，参观故宫等热门景点建议提前网上预约门票。</p><p><span style="color: rgb(255, 0, 0);">◆</span> 去八达岭长城，如果选择公共交通，注意末班车时间。</p><p><span style="color: rgb(255, 0, 0);">◆</span> 天安门广场安检严格，不要携带违禁物品。</p>', '探寻北京必游景点，深度领略京城魅力，有哪些独特玩法与注意事项？', 'http://10.149.4.59:8080/img/171824928268557537b6a31aaa4dfc77ffc849583e182.jpg', '超级管理员', '2024-06-13 11:36:42', '超级管理员', '2024-06-20 14:17:35');
INSERT INTO `sys_line` VALUES ('1801096132717002754', 20, '北京', '漫步京城—“皇家园林与历史遗迹”精品路线', '<p><strong>线路途经</strong></p><p>第一天：颐和园—圆明园；</p><p>第二天：天坛—前门大街。</p><p>颐和园，作为大型皇家园林，以昆明湖、万寿山为基址，以杭州西湖为蓝本，汲取江南园林的设计手法而建成的一座大型山水园林，有“皇家园林博物馆”之称。园内亭台楼阁，湖光山色，美不胜收。</p><p>圆明园，曾经的“万园之园”，虽历经沧桑，但残垣断壁依然诉说着往昔的辉煌。这里不仅有西洋楼等欧式建筑遗迹，还有大片的园林景观，让人感叹历史的厚重。</p><p>天坛，是明清两代皇帝“祭天”“祈谷”的场所，坛域北呈圆形，南为方形，寓意“天圆地方”。其独特的建筑风格和深厚的文化内涵，吸引着众多游客前来探寻。</p><p>前门大街，是北京著名的商业街，这里老字号店铺林立，如全聚德、大北照相馆等，能让游客感受到老北京的商业氛围和传统文化。</p>', '漫步京城，探寻皇家园林与历史遗迹的魅力，领略老北京的韵味', 'http://10.149.4.59:8080/img/17182497016842af2aa7f325446c7af540c72651a8720.jpeg', '超级管理员', '2024-06-13 11:35:55', '超级管理员', '2024-06-20 14:17:44');
INSERT INTO `sys_line` VALUES ('1801096646405996546', 20, '北京', '深度游北京，解锁小众又好玩的景点', '<p><strong style="background-color: rgb(243, 156, 18); color: rgb(0, 0, 0);">一、小众景点推荐&nbsp;</strong></p><p>北京除了那些著名的景点，还有一些小众但极具特色的地方。比如烟袋斜街，它是北京最古老的的斜街之一，街道两旁古色古香的店铺林立，充满了老北京的韵味。</p><p>南锣鼓巷，这里是最富有老北京风情的胡同街区，各种特色小店、美食琳琅满目，能让你感受到独特的北京胡同文化。</p><p>杨梅竹斜街，曾经是书局、报馆云集之地，如今文艺气息浓厚，有许多创意小店和咖啡馆。</p><p><strong style="background-color: rgb(243, 156, 18); color: rgb(44, 62, 80);">二、游玩建议：</strong></p><p>可以选择在清晨或傍晚游览这些地方，避开人流高峰。品尝当地特色小吃，如炸酱面、豆汁儿等，更深入体验北京的饮食文化。</p>', '深度游北京，发现那些不为人知的小众景点，感受不一样的京城风情', 'http://10.149.4.59:8080/img/1718248658534dd88a8657aa9548d402020ad04df0b01.jpeg', '超级管理员', '2024-06-13 11:37:58', '超级管理员', '2024-06-20 14:17:22');


-- ----------------------------
-- Table structure for sys_rotations
-- ----------------------------
DROP TABLE IF EXISTS `sys_rotations`;
CREATE TABLE `sys_rotations`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_rotations
-- ----------------------------
INSERT INTO `sys_rotations` VALUES ('1822262986038951937', '/img/1718248658534dd88a8657aa9548d402020ad04df0b01.jpeg');
INSERT INTO `sys_rotations` VALUES ('1822264267759534082', '/img/172577857901000.jpg');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `login_account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登陆账号',
  `user_type` int NULL DEFAULT NULL COMMENT '用户类型（0：系统 1：用户 2：律师）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `sex` int NULL DEFAULT 0 COMMENT '性别（0：男 1：女）',
  `avatar` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '头像',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '盐值',
  `status` int NULL DEFAULT 0 COMMENT '帐号状态（0正常 1停用）',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('0de96461b6ef0328cef416dea9366c9c', 'haha', 'user', 1, '123@qq.com', '18677777777', 0, '/img/1725789568801.jpg', '3b06d06b665249228bb6b1c5e5c38eb4', 'faf36551c467a2a3ef42ece14e2ed1be', 0, NULL, '2024-04-09 21:34:26', NULL, '2024-04-09 21:34:26', 'haha', '2024-09-08 17:59:29', NULL);
INSERT INTO `user` VALUES ('1697436716646531073', '超级管理员', 'admin', 0, '1234@qq.com', '18677777778', 0, '/img/1725778279011.jpg', 'da62f5c8b8f341fea4bdb777b6af63ce', 'e67b3f5f178f15cc76a5dc1867a16653', 0, '2024-03-26 15:17:29', '2024-08-11 09:26:43', '超级管理员', '2024-03-26 15:17:34', '超级管理员', '2024-09-08 14:51:19', NULL);
INSERT INTO `user` VALUES ('93b7a2405bb5fc1e7a8d13845da673f6', 'gfdg', 'user123', 1, '2015948259@qq.com', '13275605301', 0, '/img/1697436716646531073.jpeg', '9e086bb81078418c869e390f37133cee', 'd3ecb498ca10e4fc49e88471db4e9b3c', 0, NULL, '2024-09-08 16:44:00', NULL, '2024-09-08 16:44:00', NULL, '2024-09-08 16:44:00', NULL);
INSERT INTO `user` VALUES ('d97f5bcc9b06e080d743554ef38b2b2d', 'ban', 'ban', 1, '1@qq.com', '11111111', 0, '/img/1697436716646531073.jpeg', '4c90a82143c545ad976a87d5b27078ad', '2202ed25c79d5c982ac9f263a9a5c22a', 0, NULL, '2024-08-11 10:32:04', NULL, '2024-08-11 10:32:04', NULL, '2024-08-11 10:32:04', NULL);

SET FOREIGN_KEY_CHECKS = 1;
