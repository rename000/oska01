package com.oska.dao;

import com.oska.model.Product;

import java.util.List;

public interface ProductMapper {
    /**
     * 获取产品列表
     * @param product
     * @return
     */
    List<Product> findProductListByProId(Product product);
}