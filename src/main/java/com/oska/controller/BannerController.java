package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import com.oska.dao.banner.BannerDao;
import com.oska.dao.product.ProductDao;
import com.oska.enums.ProductType;
import com.oska.model.Banner;
import com.oska.model.Product;
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
@RequestMapping("/banner")
public class BannerController extends BaseController {

   private static final Logger logger = LoggerFactory.getLogger(BannerController.class);

   @Resource
    BannerDao bannerDao;


    /**
     * 获取产品列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getBannerList", method = { RequestMethod.POST })
    public String getBannerList(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            Banner banner = JSONObject.parseObject(jsonObject, Banner.class);

            String count = "0";
            List<Banner> list = bannerDao.getBannerList(banner);
            //封装返回数据类型

            //获取总条数
            PageInfo page = new PageInfo(list);
            count = page.getTotal() + "";

            dataMap.put("count", count);
            dataMap.put("dataList", list);

            request.getSession().setAttribute("img01",list.get(0).getBannerImg());
            request.getSession().setAttribute("img02",list.get(1).getBannerImg());
            request.getSession().setAttribute("img03",list.get(2).getBannerImg());
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error ProductController getBannerList() run error ErrorMsg is ====================" + e.getMessage());
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
            Banner banner = JSONObject.parseObject(jsonObject, Banner.class);

            if("".equals(banner.getBannerId()) || "null".equals(banner.getBannerId())){
                render(code_fail,"编辑失败，请传入相应的图片ID", null, response);

            }else {
                bannerDao.updateBannerById(banner);
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


}

