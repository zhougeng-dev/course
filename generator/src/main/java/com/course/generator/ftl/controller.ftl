package com.course.business.controller.admin;
import com.course.business.config.BusinessApplication;
import com.course.server.config.LogAspect;
import com.course.server.dto.${Domain}Dto;
import com.course.server.dto.PageDto;
import com.course.server.dto.ResponseDto;
import com.course.server.service.${Domain}Service;
import com.course.server.util.ValidatorUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


@RestController
@RequestMapping("/admin/${domain}")
public class ${Domain}Controller {
    private static final Logger LOG =  LoggerFactory.getLogger(${Domain}Controller.class);
    public static final String BUSSINESS_NAME = "大章";
    @Resource
    private ${Domain}Service ${domain}Service;
    @PostMapping("/list")
    private ResponseDto list(@RequestBody PageDto pageDto){
        ResponseDto responseDto = new ResponseDto();
        ${domain}Service.list(pageDto);
        responseDto.setContent(pageDto);
        return responseDto;
    }
    @PostMapping("/save")
    private ResponseDto save(@RequestBody ${Domain}Dto ${domain}Dto){
        //保存校验

        ResponseDto responseDto = new ResponseDto();
        ${domain}Service.save(${domain}Dto);
        responseDto.setContent(${domain}Dto);
        return responseDto;
    }
    @DeleteMapping("/delete/{id}")
    private ResponseDto delete(@PathVariable String id){
        ResponseDto responseDto = new ResponseDto();
        ${domain}Service.delete(id);
        return responseDto;
    }
}
