DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`
(
    `id`   varchar(10) NOT NULL,
    `name` varchar(20) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
INSERT INTO `test` VALUES ('1', 'test');
INSERT INTO `test` VALUES ('2', '测试');
INSERT INTO `test` VALUES ('3', '测试');