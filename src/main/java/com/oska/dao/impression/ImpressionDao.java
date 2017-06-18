package com.oska.dao.impression;

import com.oska.model.Impression;

import java.util.List;

/**
 * Created by liuh on 2017/6/18.
 */
public interface ImpressionDao {


    /**
     * 获取产品列表
     * @param impression
     * @return
     */
    List<Impression> getImpressionList(Impression impression);
    /**
     * 修改印象内容
     * @param impression
     */
    void updateImpressionById(Impression impression);

}
