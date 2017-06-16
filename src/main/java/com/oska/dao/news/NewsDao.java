package com.oska.dao.news;

import com.oska.model.News;

import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
public interface NewsDao {

    /**
     * 获取新闻列表
     * @param News
     * @return
     */
    List<News> findNewsListByProId(News News);

    /**
     * 新增新闻
     * @param News
     */
     void addNews(News News);

    /**
     * 修改新闻信息
     * @param News
     */
     void updateNewsById(News News);

    /**
     * 删除新闻
     * @param News
     */
     void deleteNewsById(News News);

}
