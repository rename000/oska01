package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.oska.common.OskaCommon;
import com.oska.dao.user.UserDao;
import com.oska.model.MsgResponse;
import com.oska.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */

@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);

    @Resource
    OskaCommon oskaCommon;

    @Resource
    UserDao userDao;

    @RequestMapping(value = "/userlogin", method = { RequestMethod.POST })
    public String userlogin(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String jsonStr = URLDecoder.decode(jsonObject, "utf-8");
        JSONObject jsonObj = JSONObject.parseObject(jsonStr);

        String userName = jsonObj.getString("userName");
        String passWord = jsonObj.getString("passWord");


        User user = new User();
        user.setUserId(1194);
        User user01 = userDao.getUserListById(user).get(0);
        //逻辑处理
        MsgResponse msgResponse = new MsgResponse("1");
        try{
            if(user01.getUserName().equals(userName) && user01.getPassword().equals(passWord)){
                render(oskaCommon.code_ok, "oskaSystems/products/products.jsp", (Map<String, Object>)msgResponse.getObject(), response);
                return null;
            }else{
                render(oskaCommon.code_fail, "用户名或密码错误", (Map<String, Object>)msgResponse.getObject(), response);
                return null;
            }


            
        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error UserController userlogin() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            render(oskaCommon.code_fail, "登录失败", (Map<String, Object>)msgResponse.getObject(), response);
            return null;
        }


    }

}
