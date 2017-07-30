package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import com.oska.dao.productType.ProductTypeDao;
import com.oska.model.Product;
import com.oska.model.ProductType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by liuh on 2017/6/8.
 */

@Controller
@RequestMapping("/productType")
public class ProductTypeController extends BaseController {

   private static final Logger logger = LoggerFactory.getLogger(ProductTypeController.class);

   @Resource
   ProductTypeDao productTypeDao;


    /**
     * 获取产品类型列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getProductType", method = { RequestMethod.POST })
    public String getProductType(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            ProductType productType = JSONObject.parseObject(jsonObject, ProductType.class);

            String count = "0";
            List<ProductType> list = productTypeDao.getProductType(productType);
            //封装返回数据类型
            List<Map> aryList = new ArrayList<>();
            if(list.size() != 0){
                for (int i = 0; i < list.size(); i++) {
                    Map<String, String> dataMapS = new HashMap<>();
                    dataMapS.put("proTypeId", list.get(i).getProTypeId()+"");
                    dataMapS.put("proTypeName", list.get(i).getProTypeName());
                    dataMapS.put("isDelete", list.get(i).getIsDelete());

                    aryList.add(dataMapS);
                }
            }else{
                aryList = null;
            }


            dataMap.put("dataList", aryList);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductTypeController getProductType() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 新增产品类型
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/addProductType", method = { RequestMethod.POST })
    public String addProductType(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            ProductType productType = JSONObject.parseObject(jsonObject, ProductType.class);

            productTypeDao.addProductType(productType);

            render(code_ok, "新增成功", null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductTypeController addProductType() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 更新产品类型
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/updateProductType", method = { RequestMethod.POST })
    public String updateProductType(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            ProductType productType = JSONObject.parseObject(jsonObject, ProductType.class);

            if("".equals(productType.getProTypeId()) || "null".equals(productType.getProTypeId())){
                render(code_fail,"编辑失败，请传入相应的产品类型ID", null, response);

            }else {
                productTypeDao.updateProductType(productType);
                //设置返回成功信息
                render(code_ok,"编辑成功", null, response);
            }

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductTypeController updateProductType() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            render(code_fail, "系统异常！", dataMap, response);
        }

        return null;
    }


    /**
     * 删除产品类型
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/deleteProductType", method = { RequestMethod.POST })
    public String deleteProductType(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            ProductType productType = JSONObject.parseObject(jsonObject, ProductType.class);

            productTypeDao.deleteProductType(productType);

            //设置返回成功信息
            render(code_ok, "删除成功",null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductTypeController deleteProductType() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！",null, response);
        }

        return null;
    }

}

