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
     * @param News
     * @return
     */
    @Override
    public List<News> findNewsListByProId(News News) {
        return oskaDao.selectList("getNewsList",News);
    }

    /**
     * 新增新闻
     * @param News
     */
    @Override
    public void addNews(News News) {
        oskaDao.insert("addNews",News);
    }

    /**
     * 修改新闻信息
     * @param News
     */
    @Override
    public void updateNewsById(News News) {
        oskaDao.update("updateNewsById",News);
    }

    /**
     * 删除新闻
     * @param News
     */
    @Override
    public void deleteNewsById(News News) {
        oskaDao.delete("deleteNewsById",News);
    }
}
