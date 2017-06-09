package com.oska.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.google.common.collect.Maps;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */
public class BaseController {
    private static final Logger logger = LoggerFactory.getLogger(BaseController.class);
    protected final static String code_ok = "1";
    protected final static String code_fail = "0";

    public void render(String code, String message,
                       Map<String, Object> dataMap, HttpServletResponse resp) {
        Map<String, Object> jsonmap = Maps.newHashMap();
        jsonmap.put("code", code);
        jsonmap.put("msg", message);
        if (dataMap != null) {
            jsonmap.put("data", dataMap);
        }

        String jsonStr = JSON.toJSONString(jsonmap,
                SerializerFeature.WriteMapNullValue,SerializerFeature.DisableCircularReferenceDetect);
        //序列化适用于处理对象,对map不能完美处理
        jsonStr = jsonStr.replaceAll("\"null\"", "\"\"");
        jsonStr = jsonStr.replaceAll(":null", ":\"\"");
        PrintWriter writer = null;
        try {
            resp.setContentType("text/html;charset=utf-8");
            // resp.setHeader("Access-Control-Allow-Origin", "*");
            // resp.setHeader("Access-Control-Allow-Headers",
            // "Origin, X-Requested-With, Content-Type, Accept");
            // resp.addHeader("Access-Control-Allow-Origin", "*");
            // resp.addHeader("Access-Control-Allow-Methods",
            // "GET, POST, PUT, DELETE");
            // resp.addHeader("Access-Control-Allow-Headers", "Content-Type");
            // resp.addHeader("Access-Control-Max-Age", "1800");// 30 min
            resp.setCharacterEncoding("UTF-8");
            writer = resp.getWriter();
            writer.write(jsonStr);
        } catch (IOException e) {
            e.printStackTrace();
            logger.error(e.getMessage());
        } finally {
            writer.flush();
            writer.close();
        }
    }

}
