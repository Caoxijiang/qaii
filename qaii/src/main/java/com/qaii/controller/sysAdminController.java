package com.qaii.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class sysAdminController {
    @RequestMapping("sysadmin.do")
    public String sysadmin(){
    	return "page/personnel/systemPersonnel";
    }
}
