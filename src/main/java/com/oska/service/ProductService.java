package com.oska.service;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Maps;
import com.oska.common.OskaCommon;
import com.oska.dao.product.ProductDao;
import com.oska.model.MsgResponse;
import com.oska.model.Product;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;

/**
 * Created by liuh on 2017/6/9.
 */
public class ProductService {

    private static final Logger logger = LoggerFactory.getLogger(ProductService.class);

    @Resource
    ProductDao productDao;
    @Resource
    OskaCommon oskaCommon;

    /**
     * 获取产品列表
     * @param jsonObject
     * @return
     */
    public MsgResponse findProductListByProId(String jsonObject) {

        HashMap<String, Object> dataMap = Maps.newHashMap();
        MsgResponse msgResponse = new MsgResponse(oskaCommon.code_ok);
        try{

            Product product = JSONObject.parseObject(jsonObject, Product.class);

            List<Product> list = productDao.findProductListByProId(product);

            dataMap.put("dataList", list);
            //设置返回成功信息
            msgResponse.setCode(oskaCommon.code_ok);
            msgResponse.setMsg("查询成功");
            msgResponse.setObject(dataMap);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController getProductList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            dataMap.put("dataList", null);
            msgResponse.setCode(oskaCommon.code_fail);
            msgResponse.setMsg("系统异常！");
            msgResponse.setObject(dataMap);
        }
        return null;
    }




}
