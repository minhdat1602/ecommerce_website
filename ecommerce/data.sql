use fashi;
ALTER TABLE products_group AUTO_INCREMENT = 1;
ALTER TABLE products_collection AUTO_INCREMENT = 1;
ALTER TABLE products_brand AUTO_INCREMENT = 1;
ALTER TABLE products AUTO_INCREMENT = 1;
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

-- Records of products
-- ----------------------------
INSERT INTO `products` (code,name,origin_price,sell_price,group_id,brand_id,collection_id,image_url,descriptions,status,new,hot) 
VALUES ('MPKBL01', 'Balo du lịch', 320000, 320000, 13, 1, 3, 'man-1.jpg', 'Balo du lịch, dã ngoại', 1, 1, 0),
('P102S3422008', 'NỮ 1', 100000, 100000, 16, 2, 4, 'women-1.jpg', ' ', 1, 1, 0),
('P172S3192007', 'NỮ 2', 110000, 110000, 16, 1, 4, 'women-2.jpg', ' ', 1, 1, 0),
('P172S322007', 'NỮ 3', 220000, 220000, 16, 3, 4, 'women-3.jpg', ' ', 1, 1, 0),
('P02S16422006', 'NỮ 4', 260000, 260000, 17, 3, 4, 'women-4.jpg', ' ', 1, 0, 1),
('P102S16162001', 'NAM 2', 100000, 350000, 15, 3, 3, 'man-2.jpg', ' ', 1, 0, 1),
('P101S16422001', 'NAM 3', 100000, 350000, 14, 2, 3, 'man-3.jpg', ' ', 1, 0, 1),
('P122S3121905', 'NAM 4', 100000, 350000, 14, 1, 3, 'man-4.jpg', ' ', 1, 0, 1);


--
-- -


INSERT INTO `products_group` (code, name, parent_id, level) VALUES ('NAM','NAM', NULL, 1);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('NU','NỮ', NULL, 1);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('TRE EM','TRẺ EM', NULL, 1);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('AO','ÁO', 1, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('QUAN','QUẦN', 1, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('PHU-KIEN','PHỤ KIỆN', 1, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('AO','ÁO', 2, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('QUAN','QUẦN', 2, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('PHU-KIEN','PHỤ KIỆN', 2, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('AO','ÁO', 3, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('QUAN','QUẦN', 3, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('PHU-KIEN','PHỤ KIỆN', 3, 2);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('BALO','BA LÔ', 6, 3);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('AO-KHOAC','ÁO KHOÁC', 4, 3);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('GIAY','GIÀY', 6, 3);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('AO-KHOAC','ÁO KHOÁC', 7, 3);
INSERT INTO `products_group` (code, name, parent_id, level)  VALUES ('TUI-XACH','TÚI XÁCH', 9, 3);


-- Records of products_brand
-- ----------------------------
INSERT INTO `products_brand` (name) VALUES ('YAME');
INSERT INTO `products_brand` (name)  VALUES ('ROUTINE');
INSERT INTO `products_brand` (name)  VALUES ('JUST MEN');



-- Records of products_collection
-- ----------------------------
INSERT INTO `products_collection` (code,name,descriptions,image_url) VALUES ('TD2020', 'Thu đông 2020', 'HÃY SẮM CHO MÌNH NHỮNG BỘ QUẦN ÁO ĐẦY ẤM CHO MÙA THU-ĐÔNG NĂM NAY', 'collection-3.jpg');
INSERT INTO `products_collection` (code,name,descriptions,image_url) VALUES ('H2020', 'Hè 2020', 'LỰA CHỌN NHỮNG SẢN PHẨM CHO MÙA HÈ NĂM NAY CÙNG FASHI', 'collection-1.jpg');
INSERT INTO `products_collection` (code,name,descriptions,image_url) VALUES ('NAM', 'NAM', 'CÁC SẢN PHẨM DÀNH CHO NAM', 'man-large.jpg');
INSERT INTO `products_collection` (code,name,descriptions,image_url) VALUES ('NU', 'NU', 'CÁC SẢN PHẨM DÀNH CHO NỮ', 'woman-large.jpg');

-- Records of stocks
-- ----------------------------
INSERT INTO `stocks` VALUES (1, 1, 7, 1, 15);
INSERT INTO `stocks` VALUES (2, 1, 7, 2, 5);
INSERT INTO `stocks` VALUES (3, 1, 7, 3, 153);
INSERT INTO `stocks` VALUES (4, 1, 7, 4, 4);
INSERT INTO `stocks` VALUES (5, 1, 7, 5, 145);

