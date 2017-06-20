package com.oska.dao.banner;

import com.oska.model.Banner;

import java.util.List;

/**
 * Created by liuh on 2017/6/20.
 */
public interface BannerDao {
    /**
     * 获取banner图列表
     * @param banner
     * @return
     */
    List<Banner> getBannerList(Banner banner);
    /**
     * 修改产品信息
     * @param banner
     */
    void updateBannerById(Banner banner);

}
