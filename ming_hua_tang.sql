/*
 Navicat Premium Data Transfer

 Source Server         : kk
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : ming_hua_tang

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 27/10/2022 14:15:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catagory
-- ----------------------------
DROP TABLE IF EXISTS `catagory`;
CREATE TABLE `catagory`  (
  `catagoryId` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dadCatagory` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `catagoryName` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `catagoryPath` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`catagoryId`) USING BTREE,
  UNIQUE INDEX `catagoryId_UNIQUE`(`catagoryId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品类别表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catagory
-- ----------------------------
INSERT INTO `catagory` VALUES ('A_QS', 'A', '裙纱', '/qunsha');
INSERT INTO `catagory` VALUES ('A_SY', 'A', '纱衣', '/shayi');
INSERT INTO `catagory` VALUES ('A_YP', 'A', '衣袍', '/yipao');
INSERT INTO `catagory` VALUES ('B_HF', 'B', '女婚服', '/nvhunfu');
INSERT INTO `catagory` VALUES ('B_HS', 'B', '女花纱', '/nvhuasha');
INSERT INTO `catagory` VALUES ('B_LF', 'B', '女礼服', '/nvlifu');
INSERT INTO `catagory` VALUES ('C_HF', 'C', '男婚服', '/nanhunfu');
INSERT INTO `catagory` VALUES ('C_HS', 'C', '男花纱', '/nanhuasha');
INSERT INTO `catagory` VALUES ('C_LF', 'C', '男礼服', '/nanlifu');
INSERT INTO `catagory` VALUES ('D_BS', 'D', '布饰', '/bushi');
INSERT INTO `catagory` VALUES ('D_KS', 'D', '扣饰', '/koushi');
INSERT INTO `catagory` VALUES ('D_PD', 'D', '飘带', '/piaodai');
INSERT INTO `catagory` VALUES ('D_QT', 'D', '其他', '/qita');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productId` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品编号',
  `productCatagory` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品类别编号',
  `productName` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名',
  `productImg` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品主图片',
  `productPrice` decimal(7, 2) NOT NULL COMMENT '商品价格',
  `productNum` int(0) DEFAULT 200 COMMENT '商品库存数量',
  `productBlurb` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品描述',
  `productShowImg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品细节展示图',
  `productShowBlurb` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品细节展示图描述',
  `productColor` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品选色颜色名',
  `productColorImg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品选色图片',
  `productNeck` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品领型名',
  `productNeckImg` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品领型图片',
  `productStyle` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品衣款名',
  `productStyleImg` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '无' COMMENT '商品衣款图片',
  `productOrder` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`productId`) USING BTREE,
  UNIQUE INDEX `productId_UNIQUE`(`productId`) USING BTREE,
  UNIQUE INDEX `productOrder`(`productOrder`) USING BTREE,
  UNIQUE INDEX `productOrder_2`(`productOrder`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('QS1', 'A_QS', '雕翱窃宝纱裙', 'gqnLmQYoh_aEUjCACjicGA.jpg', 1980.00, 200, '无', '6-TLmQYo0L-xkwYwwgU4gAo.jpg,tN_GmQYow7SX0AcwgAo41gY.jpg,td_GmQYokILTmgUwgAo41gY.jpg,td_GmQYo1ef9ywEwgAo41gY.jpg,uqnLmQYovM7ugAcwgAo41QY.jpg', '鸦黑·雕翱窃宝·织金纱襕裙,赤色·雕翱窃宝·织金纱襕裙,紫薇·雕翱窃宝·织金纱襕裙,芽白·雕翱窃宝·织金纱襕裙,鸦黑·雕翱窃宝·织金纱襕裙', '赤色,紫薇,芽白,鸦黑', 'tN_GmQYow7SX0AcwgAo41gY!60x60.jpg,td_GmQYokILTmgUwgAo41gY!60x60.jpg,td_GmQYo1ef9ywEwgAo41gY!60x60.jpg,uqnLmQYovM7ugAcwgAo41QY!60x60.jpg', '无', '无', '无', '无', 1);
INSERT INTO `product` VALUES ('QS10', 'A_QS', '草虫四季纱裙', 'ueS55wUo9LayejCbBTjoBw.jpg', 2580.00, 200, '无', 'sYa05wUo3t_hWzDoBzibBQ.jpg,w4a05wUompba9wcw6Ac4mwU.jpg', '艾绿·草虫四季花·宋锦纹暗地·妆花织金纱襕裙,淡黄·草虫四季花·宋锦纹暗地·妆花织金纱襕裙', '艾绿,淡黄', 'rYa05wUo4IDc_QYw6Ac4swQ!60x60.jpg,w4a05wUompba9wcw6Ac4mwU!60x60.jpg', '无', '无', '无', '无', 10);
INSERT INTO `product` VALUES ('QS11', 'A_QS', '盘龙翔凤纱裙', 'vIa05wUo8JGk_AEw6Ac4mwU.jpg', 3980.00, 200, '无', 'u4a05wUovP6I9gIw6Ac4mwU.jpg,ruyVgwYo5LfKPzDMCDjeBQ.jpg', '葱绿·盘龙翔凤·四季花卉暗地·妆花织金纱襴裙,胭脂红·盘龙翔凤·四季花卉暗地·妆花织金纱襴裙', '葱绿,胭脂红', 'u4a05wUovP6I9gIw6Ac4mwU!60x60.jpg,ruyVgwYo5LfKPzDMCDjeBQ!60x60.jpg', '无', '无', '无', '无', 11);
INSERT INTO `product` VALUES ('QS12', 'A_QS', '狮子戏球纱裙', '_bHdzgUowPTnHTDVBjiACg.jpg', 2750.00, 200, '无', 'mrLdzgUoht7F_QIwgAo4oAY.jpg,vaLezgUo4IDvZzCACjigBg.jpg,l7LdzgUogM7j6QQwgAo4oAY.jpg', '紫藤灰·狮子戏球·仙鹤衔芝·芙蓉暗地·织金襕纱裙,绀蓝·狮子戏球·仙鹤衔芝·芙蓉暗地·织金襕纱裙,枣红·狮子戏球·仙鹤衔芝·芙蓉暗地·织金襕纱裙', '紫藤灰,绀蓝,枣红', 'mrLdzgUoht7F_QIwgAo4oAY!60x60.jpg,vaLezgUo4IDvZzCACjigBg!60x60.jpg,l7LdzgUogM7j6QQwgAo4oAY!60x60.jpg', '无', '无', '无', '无', 12);
INSERT INTO `product` VALUES ('QS13', 'A_QS', '麒麟童子纱裙', 'uN6kgAYo9ZT4uQIw1gY4gAo.jpg', 2800.00, 200, '无', 'vt6kgAYozPHzpQQwgAo41gY.jpg,ut6kgAYo8-iObzCACjjWBg.jpg,-96kgAYooMiGxwMwgAo41gY.jpg', '妃红·麒麟童子妆花织金纱襕裙,黛紫·麒麟童子妆花织金纱襕裙,芽白·麒麟童子妆花织金纱襕裙', '妃红,黛紫,芽白', 'vt6kgAYozPHzpQQwgAo41gY!60x60.jpg,ut6kgAYo8-iObzCACjjWBg!60x60.jpg,-96kgAYooMiGxwMwgAo41gY!60x60.jpg', '无', '无', '无', '无', 13);
INSERT INTO `product` VALUES ('QS2', 'A_QS', '西鹿贺三多群', '7L_HmQYot7GL9wUwgAo4phk.jpg', 2680.00, 200, '无', 'tt_GmQYoxNCqsAcwgAo41gY.jpg,td_GmQYoyO7-tAMwgAo41gY.jpg,td_GmQYowMeWiQEwgAo41gY.jpg,ut_GmQYoqJGipAUwgAo41gY.jpg', '葡萄紫·喜鹿贺三多·妆花织金纱襕裙,苍蓝·喜鹿贺三多·妆花织金纱襕裙,茶红·喜鹿贺三多·妆花织金纱襕裙,素白·喜鹿贺三多·妆花织金纱襕裙', '苍蓝,葡萄紫,茶红,素白', 'td_GmQYoyO7-tAMwgAo41gY!60x60.jpg,tt_GmQYoxNCqsAcwgAo41gY!60x60.jpg,td_GmQYowMeWiQEwgAo41gY!60x60.jpg,ut_GmQYoqJGipAUwgAo41gY!60x60.jpg', '无', '无', '无', '无', 2);
INSERT INTO `product` VALUES ('QS3', 'A_QS', '鹦鹉衔桃纱裙', '9t_GmQYoqOyW7QMwgAo4sBI.jpg', 3480.00, 200, '无', 'ut_GmQYojJeHtQYwgAo41gY.jpg,u9_GmQYojLev_gIwgAo41gY.jpg,u9_GmQYokYGPEjCACjjWBg.jpg', '墨青·鹦鹉衔桃·妆花织金纱襕裙,深宝蓝·鹦鹉衔桃·妆花织金纱襕裙,栀子黄·鹦鹉衔桃·妆花织金纱襕裙', '墨青,栀子黄,深宝蓝', 'ut_GmQYojJeHtQYwgAo41gY!60x60.jpg,ut_GmQYojJeHtQYwgAo41gY!60x60.jpg,u9_GmQYojLev_gIwgAo41gY!60x60.jpg', '无', '无', '无', '无', 3);
INSERT INTO `product` VALUES ('QS4', 'A_QS', '杏林春燕纱裙', 'ga63lQYol6DS0QEw7gM4oAY.jpg', 2680.00, 200, '无', 'ze-YjwYogKLV6AQwgAo4oAY.jpg,zu-YjwYo5MbvsQUwgAo4oAY.jpg,ze-YjwYop7j8kAYwgAo4oAY.jpg,zO-YjwYo1faEvwIwgAo40AU.jpg', '鸦黑·杏林春燕妆花织金织金纱襕裙,赭红·杏林春燕妆花织金织金纱襕裙,葱绿·杏林春燕妆花织金织金纱襕裙,霞粉·杏林春燕妆花织金织金纱襕裙', '鸦黑,赭红,葱绿,霞粉', 'ze-YjwYogKLV6AQwgAo4oAY!60x60.jpg,zu-YjwYo5MbvsQUwgAo4oAY!60x60.jpg,ze-YjwYop7j8kAYwgAo4oAY!60x60.jpg,zO-YjwYo1faEvwIwgAo40AU!60x60.jpg', '无', '无', '无', '无', 4);
INSERT INTO `product` VALUES ('QS5', 'A_QS', '唐风神兽纱裙', 'yu-YjwYoxK3urAEwoAY4gAo.jpg', 3300.00, 200, '无', 'ye-YjwYo-qyS4wQwgAo40AU.jpg,yu-YjwYonNSDvwYwgAo40AU.jpg,zO-YjwYowMSbigYwgAo40AU.jpg', '妃红·神兽宝相花织金纱襕裙,绀蓝·神兽宝相花织金纱襕裙,水色·神兽宝相花织金纱襕裙', '妃红,绀蓝,水色', 'ye-YjwYo-qyS4wQwgAo40AU!60x60.jpg,yu-YjwYonNSDvwYwgAo40AU!60x60.jpg,zO-YjwYowMSbigYwgAo40AU!60x60.jpg', '无', '无', '无', '无', 5);
INSERT INTO `product` VALUES ('QS6', 'A_QS', '杂宝凤兔纱裙', 'ot6kgAYomMTa1gEw1gY4gAo.jpg', 2860.00, 200, '无', 'pd6kgAYo4Ifw4QEwgAo41gY.jpg,ot6kgAYoqreJhwUwgAo41gY.jpg', '茶绿·杂宝凤兔妆花织金纱襕裙,茶红·杂宝凤兔妆花织金纱襕裙', '茶绿,茶红', 'pd6kgAYo4Ifw4QEwgAo41gY!60x60.jpg,ot6kgAYoqreJhwUwgAo41gY!60x60.jpg', '无', '无', '无', '无', 6);
INSERT INTO `product` VALUES ('QS7', 'A_QS', '四季花卉纱裙', '9t6kgAYo2LCnnQYw1gY4gAo.jpg', 3300.00, 200, '无', '_d6kgAYozPWBpgMwgAo41gY.jpg,x96kgAYo0pWTygMwgAo41gY.jpg', '牙白·四季花卉遍地妆花织金纱裙,绀蓝·四季花卉遍地妆花织金纱裙', '牙白,绀蓝', '_d6kgAYozPWBpgMwgAo41gY!60x60.jpg,x96kgAYo0pWTygMwgAo41gY!60x60.jpg', '无', '无', '无', '无', 7);
INSERT INTO `product` VALUES ('QS8', 'A_QS', '猫蝶瓶安纱裙', '_96kgAYo4JOYfTDWBjiACg.jpg', 3480.00, 200, '无', '-t6kgAYogM7KwQEwgAo41gY.jpg,q96kgAYoytTb9QYwgAo41gY.jpg,l9_kgAYoz47UtwEwgAo41gY.jpg,yt6kgAYo34bvzAEwgAo41gY.jpg', '芽白·猫蝶瓶安妆花织金纱襕裙,翠蓝·猫蝶瓶安妆花织金纱襕裙,紫薇·猫蝶瓶安妆花织金纱襕裙,柳绿·猫蝶瓶安妆花织金纱襕裙', '芽白,翠蓝,紫薇,柳绿', '-t6kgAYogM7KwQEwgAo41gY!60x60.jpg,q96kgAYoytTb9QYwgAo41gY!60x60.jpg,l9_kgAYoz47UtwEwgAo41gY!60x60.jpg,yt6kgAYo34bvzAEwgAo41gY!60x60.jpg', '无', '无', '无', '无', 8);
INSERT INTO `product` VALUES ('QS9', 'A_QS', '福鹿葫芦纱裙', 'q7q55wUosNnuGDDsBDjoBw.jpg', 3480.00, 200, '无', '5Ya05wUorvS2kgUw6Ac4mwU.jpg,uYa05wUoyt-h7QUw6Ac4mwU.jpg,5Ia05wUo7N23mgYw6Ac4mwU.jpg,7oa05wUok-7ykQUw6Ac4mwU.jpg', '芽白·福鹿葫芦·缠枝牡丹暗地·妆花织金纱襕裙,藏蓝·福鹿葫芦·缠枝牡丹暗地·妆花织金纱襕裙,鸦灰·福鹿葫芦·缠枝牡丹暗地·妆花织金纱襕裙,赭色·福鹿葫芦·缠枝牡丹暗地·妆花织金纱襕裙', '芽白,藏蓝,鸦灰,赭色', '5Ya05wUorvS2kgUw6Ac4mwU!60x60.jpg,uYa05wUoyt-h7QUw6Ac4mwU!60x60.jpg,5Ia05wUo7N23mgYw6Ac4mwU!60x60.jpg,7oa05wUok-7ykQUw6Ac4mwU!60x60.jpg', '无', '无', '无', '无', 9);

SET FOREIGN_KEY_CHECKS = 1;
