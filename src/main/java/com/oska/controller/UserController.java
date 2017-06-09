package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.oska.model.MsgResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Scope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */

@Scope("prototype")
@RestController
@RequestMapping("/user")
public class UserController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(UserController.class);


    @RequestMapping(value = "/userlogin", method = { RequestMethod.POST })
    public String userlogin(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String jsonStr = URLDecoder.decode(jsonObject, "utf-8");
        JSONObject jsonObj = JSONObject.parseObject(jsonStr);

        String userName = jsonObj.getString("userName");
        String passWord = jsonObj.getString("passWord");

        //逻辑处理
        MsgResponse msgResponse = new MsgResponse("1");
        try{
            
            
            
        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error UserController userlogin() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
        }

        render(code_ok, "登录成功", (Map<String, Object>)msgResponse.getObject(), response);
        return null;
    }

}
