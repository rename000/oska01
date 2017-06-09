package com.oska.dao.product;

import com.oska.dao.OskaDao;
import com.oska.model.Product;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
@Repository(value = "productDao")
public class ProductDaoImpl implements ProductDao {

    @Resource
    private OskaDao oskaDao;

    /**
     * 获取产品列表
     * @param product
     * @return
     */
    @Override
    public List<Product> findProductListByProId(Product product) {
        Product product1 = product;
        return oskaDao.selectList("getProductList",product);
//        return null;
    }

}
