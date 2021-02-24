DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
                           `id` char(8) NOT NULL,
                           `course_id` char(8) DEFAULT NULL,
                           `name` varchar(50) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
insert into `chapter` (id,course_id,name) values('000000','000000','大章一');
insert into `chapter` (id,course_id,name) values('000001','000001','大章二');





DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
                        `id` varchar(10) NOT NULL,
                        `name` varchar(20) NOT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'test');
INSERT INTO `test` VALUES ('2', '测试');
INSERT INTO `test` VALUES ('3', '测试');
INSERT INTO `test` VALUES ('6', '测试6');
INSERT INTO `test` VALUES ('9', '测试9');