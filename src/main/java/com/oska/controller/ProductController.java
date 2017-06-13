package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
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
        try{
            Product product = JSONObject.parseObject(jsonObject, Product.class);

            String count = "0";
            List<Product> list = productDao.findProductListByProId(product);

            //获取总条数
            PageInfo page = new PageInfo(list);
            count = new Long(page.getTotal()).toString();

            dataMap.put("count", count);
            dataMap.put("dataList", list);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController getProductList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 新增产品
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/addProduct", method = { RequestMethod.POST })
    public String addProduct(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            Product product = JSONObject.parseObject(jsonObject, Product.class);

            productDao.addProduct(product);

            render(code_ok, "新增成功", null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController updateProduct() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 更新产品
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/updateProduct", method = { RequestMethod.POST })
    public String updateProduct(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            Product product = JSONObject.parseObject(jsonObject, Product.class);

            if("".equals(product.getProductId()) || "null".equals(product.getProductId())){
                render(code_fail,"编辑失败，请传入相应的产品ID", null, response);

            }else {
                productDao.updateProductById(product);
                //设置返回成功信息
                render(code_ok,"编辑成功", null, response);
            }

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController updateProduct() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            render(code_fail, "系统异常！", dataMap, response);
        }

        return null;
    }


    /**
     * 删除产品
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/deleteProduct", method = { RequestMethod.POST })
    public String deleteProduct(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            Product product = JSONObject.parseObject(jsonObject, Product.class);

            productDao.deleteProductById(product);

            //设置返回成功信息
            render(code_ok, "删除成功",null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController deleteProduct() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！",null, response);
        }

        return null;
    }

}

