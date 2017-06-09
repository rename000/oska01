package com.oska.dao.product;

import com.oska.model.Product;

import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
public interface ProductDao {

    /**
     * 获取产品列表
     * @param product
     * @return
     */
    List<Product> findProductListByProId(Product product);

}
