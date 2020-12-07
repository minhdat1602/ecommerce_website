/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : 127.0.0.1:3306
 Source Schema         : fashidb

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 07/12/2020 10:17:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_times
-- ----------------------------
DROP TABLE IF EXISTS `access_times`;
CREATE TABLE `access_times`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `page_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int NOT NULL,
  `time_signin` datetime(0) NOT NULL,
  `time_signout` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_AC_TIMES_CUST`(`customer_id`) USING BTREE,
  CONSTRAINT `FRK_AC_TIMES_CUST` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_times
-- ----------------------------
INSERT INTO `access_times` VALUES (4, '127.0.0.1', 'index.jsp', 1, '2020-12-06 15:05:10', '2020-12-06 16:05:18');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_CART_CUST`(`customer_id`) USING BTREE,
  CONSTRAINT `FRK_CART_CUST` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (1, 1);

-- ----------------------------
-- Table structure for carts_detail
-- ----------------------------
DROP TABLE IF EXISTS `carts_detail`;
CREATE TABLE `carts_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_CART_DETAIL`(`cart_id`) USING BTREE,
  INDEX `FRK_CARD_STOCK`(`stock_id`) USING BTREE,
  CONSTRAINT `FRK_CARD_STOCK` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_CART_DETAIL` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts_detail
-- ----------------------------
INSERT INTO `carts_detail` VALUES (1, 1, 2, 5);
INSERT INTO `carts_detail` VALUES (2, 1, 4, 1);

-- ----------------------------
-- Table structure for coupons
-- ----------------------------
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10, 2) NOT NULL,
  `product_id` int NULL DEFAULT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  `product_group_id` int NOT NULL,
  `type` tinyint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_COUPON_PR`(`product_id`) USING BTREE,
  INDEX `FRK_PD_GROUP_COUP`(`product_group_id`) USING BTREE,
  CONSTRAINT `FRK_COUPON_PR` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PD_GROUP_COUP` FOREIGN KEY (`product_group_id`) REFERENCES `products_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupons
-- ----------------------------

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT ' ',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthday` date NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES (1, 'minhdat1602', '123456', '18130035@st.hcmuaf.edu.vn', '0353054642', 1, '2000-02-16', ' ', 1);
INSERT INTO `customers` VALUES (2, 'longabc', '123456789', 'longabc@gmail.com', '1234156798', 1, '2000-01-01', ' ', 1);
INSERT INTO `customers` VALUES (3, 'hung123', '999999999', 'hunghung@gmail.com', '8887778881', 1, '2000-05-05', ' ', 1);

-- ----------------------------
-- Table structure for faq
-- ----------------------------
DROP TABLE IF EXISTS `faq`;
CREATE TABLE `faq`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of faq
-- ----------------------------
INSERT INTO `faq` VALUES (1, 'Làm sao để đổi trả sản phẩm', 'Liên hệ shipper hoặc nhân viên tư vấn.');

-- ----------------------------
-- Table structure for feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `feedbacks`;
CREATE TABLE `feedbacks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `problem` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_FEED_CUS`(`customer_id`) USING BTREE,
  CONSTRAINT `FRK_FEED_CUS` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedbacks
-- ----------------------------
INSERT INTO `feedbacks` VALUES (1, 'Phục vụ', 'Nhân viên tư vấn không có tâm', 1);

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '1a');
INSERT INTO `images` VALUES (2, '1b');
INSERT INTO `images` VALUES (3, '1c');
INSERT INTO `images` VALUES (4, '2a');
INSERT INTO `images` VALUES (5, '2b');
INSERT INTO `images` VALUES (6, '2c');
INSERT INTO `images` VALUES (7, '3a');
INSERT INTO `images` VALUES (8, '3b');
INSERT INTO `images` VALUES (9, '3c');
INSERT INTO `images` VALUES (10, '4a');
INSERT INTO `images` VALUES (11, '4b');
INSERT INTO `images` VALUES (12, '4c');
INSERT INTO `images` VALUES (13, '5a');
INSERT INTO `images` VALUES (14, '5b');
INSERT INTO `images` VALUES (15, '5c');
INSERT INTO `images` VALUES (16, '6a');
INSERT INTO `images` VALUES (17, '6b');
INSERT INTO `images` VALUES (18, '6c');
INSERT INTO `images` VALUES (19, '7a');
INSERT INTO `images` VALUES (20, '7b');
INSERT INTO `images` VALUES (21, '7c');

-- ----------------------------
-- Table structure for images_type
-- ----------------------------
DROP TABLE IF EXISTS `images_type`;
CREATE TABLE `images_type`  (
  `id` int NOT NULL,
  `type` tinyint NOT NULL,
  `data_id` int NOT NULL,
  `image_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_PROM_IMAGE`(`data_id`) USING BTREE,
  INDEX `FRK_TYPE_IMAGE`(`image_id`) USING BTREE,
  CONSTRAINT `FRK_COLLE_IMAGE` FOREIGN KEY (`data_id`) REFERENCES `products_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PRODUCT_IMAGES` FOREIGN KEY (`data_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PROM_IMAGE` FOREIGN KEY (`data_id`) REFERENCES `promotions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_TYPE_IMAGE` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images_type
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `total_sell_price` int NOT NULL,
  `total_discount` int NOT NULL,
  `total_money` int NOT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `coupon` int NULL DEFAULT NULL,
  `customer_id` int NOT NULL,
  `user_id` int NOT NULL,
  `date_sell` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_ORDER_CUSTOMER`(`customer_id`) USING BTREE,
  INDEX `FRK_ORDER_USER`(`user_id`) USING BTREE,
  CONSTRAINT `FRK_ORDER_CUSTOMER` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_ORDER_USER` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_detail
-- ----------------------------
DROP TABLE IF EXISTS `orders_detail`;
CREATE TABLE `orders_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `price` int NOT NULL,
  `discount` int NOT NULL,
  `quantity` int NOT NULL,
  `stock_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_STOCK_OD_DETAIL`(`stock_id`) USING BTREE,
  INDEX `FRK_ORDER_DETAIL`(`order_id`) USING BTREE,
  CONSTRAINT `FRK_ORDER_DETAIL` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_STOCK_OD_DETAIL` FOREIGN KEY (`stock_id`) REFERENCES `stocks` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_detail
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'FULL');
INSERT INTO `permissions` VALUES (2, 'ADMIN');
INSERT INTO `permissions` VALUES (3, 'CREATE');
INSERT INTO `permissions` VALUES (4, 'EDIT');
INSERT INTO `permissions` VALUES (5, 'DELETE');
INSERT INTO `permissions` VALUES (6, 'VIEW');

-- ----------------------------
-- Table structure for permissions_detail
-- ----------------------------
DROP TABLE IF EXISTS `permissions_detail`;
CREATE TABLE `permissions_detail`  (
  `id` int NOT NULL,
  `permission_id` int NOT NULL,
  `action_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `action_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `check_action` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_PER_DETAIL`(`permission_id`) USING BTREE,
  CONSTRAINT `FRK_PER_DETAIL` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permissions_detail
-- ----------------------------

-- ----------------------------
-- Table structure for product_color
-- ----------------------------
DROP TABLE IF EXISTS `product_color`;
CREATE TABLE `product_color`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `color_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_color
-- ----------------------------
INSERT INTO `product_color` VALUES (1, 'DO');
INSERT INTO `product_color` VALUES (2, 'VANG');
INSERT INTO `product_color` VALUES (3, 'CAM');
INSERT INTO `product_color` VALUES (4, 'LUC');
INSERT INTO `product_color` VALUES (5, 'LAM');
INSERT INTO `product_color` VALUES (6, 'CHAM');
INSERT INTO `product_color` VALUES (7, 'TIM');
INSERT INTO `product_color` VALUES (8, 'HONG');

-- ----------------------------
-- Table structure for product_size
-- ----------------------------
DROP TABLE IF EXISTS `product_size`;
CREATE TABLE `product_size`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `size_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_size
-- ----------------------------
INSERT INTO `product_size` VALUES (1, '28');
INSERT INTO `product_size` VALUES (2, '29');
INSERT INTO `product_size` VALUES (3, '30');
INSERT INTO `product_size` VALUES (4, '31');
INSERT INTO `product_size` VALUES (5, '32');
INSERT INTO `product_size` VALUES (6, '33');
INSERT INTO `product_size` VALUES (7, '34');
INSERT INTO `product_size` VALUES (8, 'S');
INSERT INTO `product_size` VALUES (9, 'M');
INSERT INTO `product_size` VALUES (10, 'L');
INSERT INTO `product_size` VALUES (11, 'XL');
INSERT INTO `product_size` VALUES (12, 'XXL');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `origin_price` int NOT NULL,
  `sell_price` int NOT NULL,
  `group_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `collection_id` int NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `hot` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_PD_GROUP_PD`(`group_id`) USING BTREE,
  INDEX `FRK_PD_BRAND`(`brand_id`) USING BTREE,
  INDEX `FRK_PD_COLLECTION`(`collection_id`) USING BTREE,
  CONSTRAINT `FRK_PD_BRAND` FOREIGN KEY (`brand_id`) REFERENCES `products_brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PD_COLLECTION` FOREIGN KEY (`collection_id`) REFERENCES `products_collection` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PD_GROUP_PD` FOREIGN KEY (`group_id`) REFERENCES `products_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'P02S16192010', 'Polo trơn basic Ceffylo', 100000, 320000, 13, 9, 2, 'test\\\\1.jpg', '', 1, 1, 0);
INSERT INTO `products` VALUES (2, 'P102S3422008', 'Polo phối bo Aliflux', 100000, 320000, 13, 9, 2, ' test\\\\2.jpg', ' ', 1, 1, 0);
INSERT INTO `products` VALUES (3, 'P172S3192007', 'Limited Edition Embroidered Polo', 100000, 320000, 13, 9, 2, ' test\\\\3.jpg', ' ', 1, 1, 0);
INSERT INTO `products` VALUES (4, 'P172S322007', 'Polo họa tiết xương rồng Zara', 100000, 320000, 13, 9, 2, ' test\\\\4.jpg', ' ', 1, 1, 0);
INSERT INTO `products` VALUES (5, 'P02S16422006', 'Polo phối vai Aliflux', 100000, 320000, 13, 9, 2, '  test\\\\5.jpg', ' ', 1, 0, 1);
INSERT INTO `products` VALUES (6, ' P172S16162003', ' Polo họa tiết kẻ sọc Polido', 100000, 320000, 13, 9, 2, ' test\\\\6.jpg', ' ', 1, 0, 1);
INSERT INTO `products` VALUES (7, 'P102S16162001', 'Polido Cupido Polo Limited Edition 2', 100000, 350000, 13, 9, 2, ' test\\\\7.jpg', ' ', 1, 0, 1);
INSERT INTO `products` VALUES (8, 'P101S16422001', 'Polo thêu chữ Aliflux', 100000, 350000, 13, 9, 2, ' test\\\\8.jpg', ' ', 1, 0, 1);
INSERT INTO `products` VALUES (9, 'P122S3121905', 'POLO kẻ cotton UNIQLO', 100000, 350000, 13, 9, 2, ' test\\\\9.jpg', ' ', 1, 0, 1);
INSERT INTO `products` VALUES (10, '311SCOAR1802', 'Polo bomber Trơn Arrow', 100000, 320000, 13, 9, 2, ' test\\\\10.jpg', ' ', 1, 0, 0);

-- ----------------------------
-- Table structure for products_brand
-- ----------------------------
DROP TABLE IF EXISTS `products_brand`;
CREATE TABLE `products_brand`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products_brand
-- ----------------------------
INSERT INTO `products_brand` VALUES (1, 'NIKE');
INSERT INTO `products_brand` VALUES (2, 'ADIDAS');
INSERT INTO `products_brand` VALUES (3, 'YAME');
INSERT INTO `products_brand` VALUES (4, 'ROUTINE');
INSERT INTO `products_brand` VALUES (5, 'PUMA');
INSERT INTO `products_brand` VALUES (6, 'GUCCCI');
INSERT INTO `products_brand` VALUES (7, 'LV');
INSERT INTO `products_brand` VALUES (8, 'Just men');
INSERT INTO `products_brand` VALUES (9, 'POLIDO');

-- ----------------------------
-- Table structure for products_collection
-- ----------------------------
DROP TABLE IF EXISTS `products_collection`;
CREATE TABLE `products_collection`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products_collection
-- ----------------------------
INSERT INTO `products_collection` VALUES (1, 'TD123', 'Thu đông', '', ' ');
INSERT INTO `products_collection` VALUES (2, 'XHTD888', 'Xuân hạ thu đông', '', '');

-- ----------------------------
-- Table structure for products_group
-- ----------------------------
DROP TABLE IF EXISTS `products_group`;
CREATE TABLE `products_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int NULL DEFAULT NULL,
  `level` tinyint NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products_group
-- ----------------------------
INSERT INTO `products_group` VALUES (1, 'NAM', NULL, 1);
INSERT INTO `products_group` VALUES (2, 'NU', NULL, 1);
INSERT INTO `products_group` VALUES (3, 'TRE EM', NULL, 1);
INSERT INTO `products_group` VALUES (4, 'AO', 1, 2);
INSERT INTO `products_group` VALUES (5, 'QUAN', 1, 2);
INSERT INTO `products_group` VALUES (6, 'PHU KIEN', 1, 2);
INSERT INTO `products_group` VALUES (7, 'AO', 2, 2);
INSERT INTO `products_group` VALUES (8, 'QUAN', 2, 2);
INSERT INTO `products_group` VALUES (9, 'PHU KIEN', 2, 2);
INSERT INTO `products_group` VALUES (10, 'AO', 3, 2);
INSERT INTO `products_group` VALUES (11, 'QUAN', 3, 2);
INSERT INTO `products_group` VALUES (12, 'PHU KIEN', 3, 2);
INSERT INTO `products_group` VALUES (13, 'AO POLLO', 4, 3);

-- ----------------------------
-- Table structure for promotion_group
-- ----------------------------
DROP TABLE IF EXISTS `promotion_group`;
CREATE TABLE `promotion_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_group_id` int NOT NULL,
  `promotion_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_GROUP_PRO_PRO`(`product_group_id`) USING BTREE,
  INDEX `FRK_PRO_GROUP_PRO`(`promotion_id`) USING BTREE,
  CONSTRAINT `FRK_GROUP_PRO_PRO` FOREIGN KEY (`product_group_id`) REFERENCES `products_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PRO_GROUP_PRO` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotion_group
-- ----------------------------

-- ----------------------------
-- Table structure for promotion_product
-- ----------------------------
DROP TABLE IF EXISTS `promotion_product`;
CREATE TABLE `promotion_product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `promotion_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_PROMOTION_PRODUCT`(`product_id`) USING BTREE,
  INDEX `FRK_PROMOTION_PRODUCT_PRO`(`promotion_id`) USING BTREE,
  CONSTRAINT `FRK_PROMOTION_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_PROMOTION_PRODUCT_PRO` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotion_product
-- ----------------------------

-- ----------------------------
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descriptions` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(10, 2) NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotions
-- ----------------------------

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `commentator` int NOT NULL,
  `product_id` int NOT NULL,
  `vote` int NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_review` datetime(0) NOT NULL,
  `parrent_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_REV_PRODUCT`(`product_id`) USING BTREE,
  INDEX `FRK_REV_USER`(`commentator`) USING BTREE,
  CONSTRAINT `FRK_REV_CUST` FOREIGN KEY (`commentator`) REFERENCES `customers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_REV_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_REV_USER` FOREIGN KEY (`commentator`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reviews
-- ----------------------------

-- ----------------------------
-- Table structure for stocks
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `product_size_id` int NOT NULL,
  `product_color_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_STOCK_PRODUCT`(`product_id`) USING BTREE,
  INDEX `FRK_STOCK_SIZE`(`product_size_id`) USING BTREE,
  INDEX `FRK_STOCK_COLOR`(`product_color_id`) USING BTREE,
  CONSTRAINT `FRK_STOCK_COLOR` FOREIGN KEY (`product_color_id`) REFERENCES `product_color` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_STOCK_PRODUCT` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_STOCK_SIZE` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stocks
-- ----------------------------
INSERT INTO `stocks` VALUES (1, 1, 7, 1, 15);
INSERT INTO `stocks` VALUES (2, 1, 7, 2, 5);
INSERT INTO `stocks` VALUES (3, 1, 7, 3, 153);
INSERT INTO `stocks` VALUES (4, 1, 7, 4, 4);
INSERT INTO `stocks` VALUES (5, 1, 7, 5, 145);

-- ----------------------------
-- Table structure for suppliers
-- ----------------------------
DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tax_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for user_group_permission
-- ----------------------------
DROP TABLE IF EXISTS `user_group_permission`;
CREATE TABLE `user_group_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_USER_GROUP_PER`(`user_group_id`) USING BTREE,
  INDEX `FRK_GROUP_PER`(`permission_id`) USING BTREE,
  CONSTRAINT `FRK_GROUP_PER` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FRK_USER_GROUP_PER` FOREIGN KEY (`user_group_id`) REFERENCES `users_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group_permission
-- ----------------------------
INSERT INTO `user_group_permission` VALUES (1, 1, 1);
INSERT INTO `user_group_permission` VALUES (2, 2, 5);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `birthday` date NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `group_id` int NOT NULL,
  `date_register` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FRK_USER_GROUP`(`group_id`) USING BTREE,
  CONSTRAINT `FRK_USER_GROUP` FOREIGN KEY (`group_id`) REFERENCES `users_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'datadmin', '123456', 'datadmin@gmail.com', '5434243216', 1, '0000-00-00', ' ', 1, 1, '0000-00-00');
INSERT INTO `users` VALUES (2, 'longadmin', '123456', 'longadmin@gmail.com', '3423432523', 1, '0000-00-00', ' ', 1, 1, '0000-00-00');
INSERT INTO `users` VALUES (3, 'hungnhanvien', '123456', 'hungnhanvienbanhang@gmail.com', '1324934852', 1, '0000-00-00', ' ', 1, 2, '0000-00-00');

-- ----------------------------
-- Table structure for users_group
-- ----------------------------
DROP TABLE IF EXISTS `users_group`;
CREATE TABLE `users_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_group
-- ----------------------------
INSERT INTO `users_group` VALUES (1, 'ADMIN', 'ADMIN');
INSERT INTO `users_group` VALUES (2, 'NV', 'NHAN VIEN');
INSERT INTO `users_group` VALUES (3, '', '');

SET FOREIGN_KEY_CHECKS = 1;
