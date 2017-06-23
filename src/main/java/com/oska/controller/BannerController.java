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
import java.net.URLDecoder;
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
     * 获取Banner图列表
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
            logger.error("Error BannerController getBannerList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }

    /**
     * 更新三张Banner图
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/updateBanner", method = { RequestMethod.POST })
    public String updateBanner(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        jsonObject = URLDecoder.decode(jsonObject, "utf-8");
        JSONObject jsonObj = JSONObject.parseObject(jsonObject);

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
                Banner banner1 = new Banner();
                banner1.setBannerId(1);
                banner1.setBannerImg(jsonObj.getString("img01"));
                bannerDao.updateBannerById(banner1);
                Banner banner2 = new Banner();
                banner2.setBannerId(2);
                banner2.setBannerImg(jsonObj.getString("img02"));
                bannerDao.updateBannerById(banner2);
                Banner banner3 = new Banner();
                banner3.setBannerId(3);
                banner3.setBannerImg(jsonObj.getString("img03"));
                bannerDao.updateBannerById(banner3);
                //设置返回成功信息
                render(code_ok,"编辑成功", null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error BannerController updateBanner() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            render(code_fail, "系统异常！", dataMap, response);
        }

        return null;
    }


}

