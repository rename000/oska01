package com.oska.dao.news;

import com.oska.dao.OskaDao;
import com.oska.model.News;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
@Repository(value = "newsDao")
public class NewsDaoImpl implements NewsDao {

    @Resource
    private OskaDao oskaDao;

    /**
     * 获取新闻列表
     * @param news
     * @return
     */
    @Override
    public List<News> findNewsListByProId(News news) {
        return oskaDao.selectList("getNewsList",news,news.getNub(),news.getSize());
    }

    /**
     * 新增新闻
     * @param news
     */
    @Override
    public void addNews(News news) {
        oskaDao.insert("addNews",news);
    }

    /**
     * 修改新闻信息
     * @param news
     */
    @Override
    public void updateNewsById(News news) {
        oskaDao.update("updateNewsById",news);
    }

    /**
     * 删除新闻
     * @param news
     */
    @Override
    public void deleteNewsById(News news) {
        oskaDao.delete("deleteNewsById",news);
    }
}
