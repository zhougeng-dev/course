-- 大章
DROP TABLE IF EXISTS `chapter`;
CREATE TABLE `chapter` (
                           `id` char(8) NOT NULL,
                           `course_id` char(8) DEFAULT NULL,
                           `name` varchar(50) DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
insert into `chapter` (id,course_id,name) values('000001','000001','大章01');
insert into `chapter` (id,course_id,name) values('000002','000002','大章02');
insert into `chapter` (id,course_id,name) values('000003','000003','大章03');
insert into `chapter` (id,course_id,name) values('000004','000004','大章04');
insert into `chapter` (id,course_id,name) values('000005','000005','大章05');
insert into `chapter` (id,course_id,name) values('000006','000006','大章06');
insert into `chapter` (id,course_id,name) values('000007','000007','大章07');
insert into `chapter` (id,course_id,name) values('000008','000008','大章08');
insert into `chapter` (id,course_id,name) values('000009','000009','大章09');
insert into `chapter` (id,course_id,name) values('000010','000010','大章10');
insert into `chapter` (id,course_id,name) values('000011','000011','大章11');
insert into `chapter` (id,course_id,name) values('000012','000012','大章12');
insert into `chapter` (id,course_id,name) values('000013','000013','大章13');
insert into `chapter` (id,course_id,name) values('000014','000014','大章14');

# 小节
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section` (
                           `id` char(8) NOT NULL,
                           `title` varchar(50) NOT NULL,
                           `course_id` char(8) DEFAULT NULL,
                           `chapter_id` char(8) DEFAULT NULL,
                           `video` varchar(200) DEFAULT NULL,
                           `time` int(11) DEFAULT NULL,
                           `charge` char(1) DEFAULT NULL,
                           `sort` int(11) DEFAULT NULL,
                           `created_at` datetime DEFAULT NULL,
                           `updated_at` datetime DEFAULT NULL,
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

alter table `section` add column (`vod` char(32) comment 'vod|阿里云vod');

insert into `section` (id, title, course_id, chapter_id, video, time, charge, sort, created_at, updated_at)
values ('00000001', '测试小节01', '00000001', '00000000', '', 500, 'f', 1, now(), now());


# 测试
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