-- 课程
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
                          `id` char(8) NOT NULL DEFAULT '' COMMENT 'id',
                          `name` varchar(50) NOT NULL COMMENT '名称',
                          `summary` varchar(2000) DEFAULT NULL COMMENT '概述',
                          `time` int(11) DEFAULT '0' COMMENT '时长|单位秒',
                          `price` decimal(8,2) DEFAULT '0.00' COMMENT '价格（元）',
                          `image` varchar(100) DEFAULT NULL COMMENT '封面',
                          `level` char(1) DEFAULT NULL COMMENT '级别|枚举[CourseLevelEnum]：ONE("1", "初级"),TWO("2", "中级"),THREE("3", "高级")',
                          `charge` char(1) DEFAULT NULL COMMENT '收费|枚举[CourseChargeEnum]：CHARGE("C", "收费"),FREE("F", "免费")',
                          `status` char(1) DEFAULT NULL COMMENT '状态|枚举[CourseStatusEnum]：PUBLISH("P", "发布"),DRAFT("D", "草稿")',
                          `enroll` int(11) DEFAULT '0' COMMENT '报名数',
                          `sort` int(11) DEFAULT NULL COMMENT '顺序',
                          `created_at` datetime DEFAULT NULL COMMENT '创建时间',
                          `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
                          `teacher_id` char(8) DEFAULT NULL COMMENT '讲师|teacher.id',
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程';
insert into course (id, name, summary, time, price, image, level, charge, status, enroll, sort, created_at, updated_at)
values ('00000001', '测试课程01', '这是一门测试课程', 7200, 19.9, '', 1, 'C', 'P', 100, 0, now(), now());
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
                           `id` char(8) NOT NULL COMMENT 'id',
                           `title` varchar(50) NOT NULL COMMENT '标题',
                           `course_id` char(8) DEFAULT NULL COMMENT '课程|course.id',
                           `chapter_id` char(8) DEFAULT NULL COMMENT '大章|chapter.id',
                           `video` varchar(200) DEFAULT NULL COMMENT '视频',
                           `time` int(11) DEFAULT NULL COMMENT '时长|单位秒',
                           `charge` char(1) DEFAULT NULL COMMENT '收费|C 收费；F 免费',
                           `sort` int(11) DEFAULT NULL COMMENT '顺序',
                           `created_at` datetime DEFAULT NULL COMMENT '创建时间',
                           `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
                           `vod` char(32) DEFAULT NULL COMMENT 'vod|阿里云vod',
                           PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 comment='小节';

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
select * from chapter;
-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', 'test');
INSERT INTO `test` VALUES ('2', '测试');
INSERT INTO `test` VALUES ('3', '测试');
INSERT INTO `test` VALUES ('6', '测试6');
INSERT INTO `test` VALUES ('9', '测试9');