package com.oska.dao;

import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

/**
 * Created by liuh on 2017/6/8.
 */
@Repository(value = "oskaDao")
public class OskaDao extends BaseDao {
    @Autowired
    @Override
    public void setSqlSessionFactory(
            @Qualifier("oskaSessionFactory") SqlSessionFactory sqlSessionFactory) {
        super.setSqlSessionFactory(sqlSessionFactory);
    }
}