package com.oska.dao.banner;

import com.oska.dao.OskaDao;
import com.oska.model.Banner;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/20.
 */
@Repository(value = "bannerDao")
public class BannerDaoImpl implements BannerDao {

    @Resource
    OskaDao oskaDao;

    /**
     *  获取banner图列表
     * @param banner
     * @return
     */
    @Override
    public List<Banner> getBannerList(Banner banner) {
        return oskaDao.selectList("getBannerList",banner);
    }

    /**
     * 跟新Banner图
     * @param banner
     */
    @Override
    public void updateBannerById(Banner banner) {
        oskaDao.update("updateBannerById",banner);
    }
}
