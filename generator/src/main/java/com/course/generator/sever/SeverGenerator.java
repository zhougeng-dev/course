package com.course.generator.sever;

import com.course.generator.util.FreemarkerUtil;
import freemarker.template.TemplateException;

import java.io.IOException;

public class SeverGenerator {
    static String toPath = "generator\\src\\main\\java\\com\\course\\generator\\test\\";
    public static void main(String[] args) throws IOException, TemplateException {
        FreemarkerUtil.initConfig("test.ftl");
        FreemarkerUtil.generator(toPath+"Test.java");
    }
}
