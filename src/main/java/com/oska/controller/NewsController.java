package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import com.oska.dao.news.NewsDao;
import com.oska.dao.news.NewsDaoImpl;
import com.oska.enums.NewsType;
import com.oska.model.News;
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
@RequestMapping("/news")
public class NewsController extends BaseController {

   private static final Logger logger = LoggerFactory.getLogger(NewsController.class);

   @Resource
    NewsDao newsDao;


    /**
     * 获取新闻列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getNewsList", method = { RequestMethod.POST })
    public String getNewsList(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            News news = JSONObject.parseObject(jsonObject, News.class);

            String count = "0";
            List<News> list = newsDao.findNewsListByProId(news);

            //封装返回数据类型
            List<Map> aryList = new ArrayList<>();
            if(list.size() != 0){
                for (int i = 0; i < list.size(); i++) {
                    Map<String, String> dataMapS = new HashMap<>();
                    dataMapS.put("newsId", list.get(i).getNewsId()+"");
                    dataMapS.put("newsTitle", list.get(i).getNewsTitle());
                    dataMapS.put("newsType", list.get(i).getNewsType());
                    dataMapS.put("newsTypeDesc", NewsType.valueOfByString(list.get(i).getNewsType().trim()).getMsg());
                    dataMapS.put("newsInfo", list.get(i).getNewsInfo());
                    dataMapS.put("newsDesc", list.get(i).getNewsDesc());
                    dataMapS.put("createTime", list.get(i).getCreateTime()+"");
                    dataMapS.put("clickNum",list.get(i).getClickNum());
                    dataMapS.put("type",list.get(i).getType());
                    dataMapS.put("newsImg",list.get(i).getNewsImg());

                    aryList.add(dataMapS);
                }
            }else{
                aryList = null;
            }

            //获取总条数
            PageInfo page = new PageInfo(list);
            count = new Long(page.getTotal()).toString();

            dataMap.put("count", count);
            dataMap.put("dataList", aryList);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error NewsController getNewsList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 新增新闻
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/addNews", method = { RequestMethod.POST })
    public String addNews(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            News news = JSONObject.parseObject(jsonObject, News.class);

            newsDao.addNews(news);

            render(code_ok, "新增成功", null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error NewsController addNews() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 更新新闻
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/updateNews", method = { RequestMethod.POST })
    public String updateNews(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            News news = JSONObject.parseObject(jsonObject, News.class);

            if("".equals(news.getNewsId()) || "null".equals(news.getNewsId()) || null == news.getNewsId()){
                render(code_fail,"编辑失败，请传入相应的新闻ID", null, response);

            }else {
                newsDao.updateNewsById(news);
                //设置返回成功信息
                render(code_ok,"编辑成功", null, response);
            }

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error NewsController updateNews() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            render(code_fail, "系统异常！", dataMap, response);
        }

        return null;
    }


    /**
     * 删除新闻
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/deleteNews", method = { RequestMethod.POST })
    public String deleteNews(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            News News = JSONObject.parseObject(jsonObject, News.class);

            newsDao.deleteNewsById(News);

            //设置返回成功信息
            render(code_ok, "删除成功",null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error NewsController deleteNews() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！",null, response);
        }

        return null;
    }


    /**
     * 获取新闻详情 更新点击率
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getNewsAndtNum", method = { RequestMethod.POST })
    public String getNewsAndtNum(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            News news = JSONObject.parseObject(jsonObject, News.class);


            String count = "0";
            List<News> list = newsDao.findNewsListByProId(news);
            int clickNums = 0;
            if(list.get(0).getClickNum() == null){
                clickNums = 1;
            }else{
                clickNums = Integer.parseInt(list.get(0).getClickNum()) + 1;
            }

            news.setNewsId(list.get(0).getNewsId());
            news.setClickNum(clickNums+"");
            newsDao.updateNewsById(news);

            //封装返回数据类型
            List<Map> aryList = new ArrayList<>();
            if(list.size() != 0){
                for (int i = 0; i < list.size(); i++) {
                    Map<String, String> dataMapS = new HashMap<>();
                    dataMapS.put("newsId", list.get(i).getNewsId()+"");
                    dataMapS.put("newsTitle", list.get(i).getNewsTitle());
                    dataMapS.put("newsType", list.get(i).getNewsType());
                    dataMapS.put("newsTypeDesc", NewsType.valueOfByString(list.get(i).getNewsType()).getMsg());
                    dataMapS.put("newsInfo", list.get(i).getNewsInfo());
                    dataMapS.put("newsDesc", list.get(i).getNewsDesc());
                    dataMapS.put("createTime", list.get(i).getCreateTime()+"");
                    dataMapS.put("clickNum",news.getClickNum());

                    aryList.add(dataMapS);
                }
            }

            //获取总条数
            PageInfo page = new PageInfo(list);
            count = new Long(page.getTotal()).toString();

            dataMap.put("count", count);
            dataMap.put("dataList", aryList);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error NewsController getNewsAndtNum() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }

}

