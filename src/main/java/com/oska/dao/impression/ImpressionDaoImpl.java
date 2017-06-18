package com.oska.dao.impression;

import com.oska.dao.OskaDao;
import com.oska.model.Impression;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/18.
 */
@Repository(value = "impressionDao")
public class ImpressionDaoImpl implements ImpressionDao {

    @Resource
    private OskaDao oskaDao;

    /**
     *
     * @param impression
     * @return
     */
    @Override
    public List<Impression> getImpressionList(Impression impression) {
        return oskaDao.selectList("getImpressionList",impression);
    }

    /**
     * 修改印象内容
     * @param impression
     */
    @Override
    public void updateImpressionById(Impression impression) {
        oskaDao.update("updateImpressionById",impression);
    }
}
