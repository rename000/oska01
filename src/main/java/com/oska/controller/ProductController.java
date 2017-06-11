package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.oska.dao.product.ProductDao;
import com.oska.model.MsgResponse;
import com.oska.model.Product;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */

@Controller
@RequestMapping("/product")
public class ProductController extends BaseController {

   private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

   @Resource
   ProductDao productDao;


    /**
     * 获取产品列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getProductList", method = { RequestMethod.POST })
    public String getProductList(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        MsgResponse msgResponse = new MsgResponse(code_ok);
        try{

            Product product = JSONObject.parseObject(jsonObject, Product.class);

            List<Product> list = productDao.findProductListByProId(product);

            String count = "11";

            dataMap.put("count", count);
            dataMap.put("dataList", list);
            //设置返回成功信息
            msgResponse.setCode(code_ok);
            msgResponse.setMsg("查询成功");
            msgResponse.setObject(dataMap);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController getProductList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            dataMap.put("dataList", null);
            msgResponse.setCode(code_fail);
            msgResponse.setMsg("系统异常！");
            msgResponse.setObject(dataMap);
        }

        render(msgResponse.getCode(), msgResponse.getMsg(), (Map<String, Object>)msgResponse.getObject(), response);

        return null;
    }


}

