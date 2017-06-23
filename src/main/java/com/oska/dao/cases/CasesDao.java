package com.oska.dao.cases;

import com.oska.model.Cases;

import java.util.List;

/**
 * Created by liuh on 2017/6/22.
 */
public interface CasesDao {

    /**
     * 获取产品列表
     * @param cases
     * @return
     */
    List<Cases> getCasesList(Cases cases);

    /**
     * 新增产品
     * @param cases
     */
    void addCases(Cases cases);

    /**
     * 修改产品信息
     * @param cases
     */
    void updateCases(Cases cases);

    /**
     * 删除产品
     * @param cases
     */
    void deleteCases(Cases cases);
}
