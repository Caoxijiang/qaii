package com.qaii.controller;
import com.qaii.domain.User;
import com.qaii.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;


/**
 * Created by kunpeng on 2019/1/14 13:46
 **/

@Controller
public class ChangePasswordController{
    @Resource
    private UserService userServivce;

    @RequestMapping(value = "changePwd.do", method = RequestMethod.POST)
    public String ChangePassword(HttpServletRequest request) {
        HttpSession session=request.getSession();
        String username=(String)session.getAttribute("name");
        //获取用户输入信息
        //String currentpassword = request.getParameter("Password");
        String newpassword=request.getParameter("Confirm_Password");
        //获取输出流这里的前台已经判定过了后台就不用再判定了
            User user=new User();
            user.setAdminAccount(username);
            user.setAdminPwd(newpassword);
            int count=userServivce.updatePassword(user);
            if (count>0){
                //到时候这里是需要根据前台页面结果做调整的
                session.invalidate();
                return"page/changePwdSuccess";
            }else{
                //到时候这里是需要根据前台页面结果做调整的
                return "page/changePwdError";
            }

    }

    @RequestMapping(value = "getPasswordByUserName.do", method = RequestMethod.POST)
    @ResponseBody
    public User getPasswordByUserName(HttpServletRequest request) {
        HttpSession session=request.getSession();
        String username=(String)session.getAttribute("name");
        User user2=userServivce.findPasswordByUserName(username);
        System.out.println(user2);
        return user2;
    }

}
