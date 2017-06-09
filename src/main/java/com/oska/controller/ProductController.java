package com.oska.controller;

import com.oska.dao.product.ProductDao;
import com.oska.model.MsgResponse;
import com.oska.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
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
   @Resource
   ProductService productService;


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

        if (logger.isDebugEnabled()) {
            logger.debug("Enter ProductController getProductList() parameter is ====================" + jsonObject);
        }

        MsgResponse msgResponse = productService.findProductListByProId(jsonObject);

        render(msgResponse.getCode(), msgResponse.getMsg(), (Map<String, Object>)msgResponse.getObject(), response);

        return null;
    }


    /**
     * 上传产品图片
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/upload", method = { RequestMethod.POST })
    public String uploadImg(
            File iconImg,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        if (logger.isDebugEnabled()) {
            logger.debug("Enter ProductController uploadImg() parameter is ====================" + iconImg);
        }



        MsgResponse msgResponse = new MsgResponse();

        render(msgResponse.getCode(), msgResponse.getMsg(), (Map<String, Object>)msgResponse.getObject(), response);

        return null;
    }


}

