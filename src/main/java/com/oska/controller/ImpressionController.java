package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.beust.jcommander.internal.Maps;
import com.oska.common.OskaCommon;
import com.oska.dao.impression.ImpressionDao;
import com.oska.dao.user.UserDao;
import com.oska.model.Impression;
import com.oska.model.MsgResponse;
import com.oska.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */

@RestController
@RequestMapping("/impression")
public class ImpressionController extends BaseController {

    private static final Logger logger = LoggerFactory.getLogger(ImpressionController.class);

    @Resource
    ImpressionDao impressionDao;

    /**
     * 获取产品列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getImpressionList", method = { RequestMethod.POST })
    public String getImpressionList(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = new HashMap<>();
        try{
            Impression impression = JSONObject.parseObject(jsonObject, Impression.class);

            List<Impression> list = impressionDao.getImpressionList(impression);

            dataMap.put("dataList", list);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ImpressionController getImpressionList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 更新印象
     * @param jsonObject
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(value = "/updateImpression", method = { RequestMethod.POST })
    public String updateImpression(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        String jsonStr = URLDecoder.decode(jsonObject, "utf-8");
        JSONObject jsonObj = JSONObject.parseObject(jsonStr);

        String impressionId = jsonObj.getString("impressionId");

        Impression impression = new Impression();
        impression.setImpressionId(impressionId);
        impression.setImpressionDesc(jsonObj.getString("impressionDesc"));

        //逻辑处理
        try{

            if( "".equals(impression.getImpressionId()) || "null".equals(impression.getImpressionId()) || impression.getImpressionId() == null ){
                render(code_fail, "ID不能为空", null, response);
            }else{
                impressionDao.updateImpressionById(impression);
                render(code_ok, "操作成功", null, response);
            }

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ImpressionController updateImpression() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            render(code_fail, "操作失败", null, response);

        }

        return null;
    }

}
