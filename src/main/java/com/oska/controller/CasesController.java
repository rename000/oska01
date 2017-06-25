package com.oska.controller;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageInfo;
import com.google.common.collect.Maps;
import com.oska.dao.cases.CasesDao;
import com.oska.model.Cases;
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
@RequestMapping("/cases")
public class CasesController extends BaseController {

   private static final Logger logger = LoggerFactory.getLogger(CasesController.class);

   @Resource
   CasesDao casesDao;


    /**
     * 获取案例列表
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/getCasesList", method = { RequestMethod.POST })
    public String getCasesList(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            Cases cases = JSONObject.parseObject(jsonObject, Cases.class);

            String count = "0";
            List<Cases> list = casesDao.getCasesList(cases);
            //封装返回数据类型
            List<Map> aryList = new ArrayList<>();
            if(list.size() != 0){
                for (int i = 0; i < list.size(); i++) {
                    Map<String, String> dataMapS = new HashMap<>();
                    dataMapS.put("caseId", list.get(i).getCaseId()+"");
                    dataMapS.put("caseName", list.get(i).getCaseName());
                    dataMapS.put("caseImg", list.get(i).getCaseImg());

                    aryList.add(dataMapS);
                }
            }else{
                aryList = null;
            }

            //获取总条数
            PageInfo page = new PageInfo(list);
            count = page.getTotal() + "";

            dataMap.put("count", count);
            dataMap.put("dataList", aryList);
            //设置返回信息
            render(code_ok, "查询成功", dataMap, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error CasesController getCasesList() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 新增案例
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/addCases", method = { RequestMethod.POST })
    public String addCases(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            Cases cases = JSONObject.parseObject(jsonObject, Cases.class);
            casesDao.addCases(cases);

            render(code_ok, "新增成功", null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error CasesController updateCases() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！", null, response);
        }

        return null;
    }


    /**
     * 更新案例
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/updateCases", method = { RequestMethod.POST })
    public String updateCases(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        HashMap<String, Object> dataMap = Maps.newHashMap();
        try{
            Cases cases = JSONObject.parseObject(jsonObject, Cases.class);

            if("".equals(cases.getCaseId()) || "null".equals(cases.getCaseId())){
                render(code_fail,"编辑失败，请传入相应的案例ID", null, response);

            }else {
                casesDao.updateCases(cases);
                //设置返回成功信息
                render(code_ok,"编辑成功", null, response);
            }

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error CasesController updateCases() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回失败信息
            render(code_fail, "系统异常！", dataMap, response);
        }

        return null;
    }


    /**
     * 删除案例
     * @return
     * @throws Exception
     */
    @ResponseBody
    @RequestMapping(value = "/deleteCases", method = { RequestMethod.POST })
    public String deleteCases(
            @RequestParam String jsonObject,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        //逻辑处理
        try{
            Cases cases = JSONObject.parseObject(jsonObject, Cases.class);

            casesDao.deleteCases(cases);

            //设置返回成功信息
            render(code_ok, "删除成功",null, response);

        }catch (Exception e){
            e.printStackTrace();
            logger.error("Error CasesController deleteCases() run error ErrorMsg is ====================" + e.getMessage());
            //throw e;
            //设置返回信息
            render(code_fail, "系统异常！",null, response);
        }

        return null;
    }

}

