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

    /**
     * 新增产品
     * @param product
     */
     void addProduct(Product product);

    /**
     * 修改产品信息
     * @param product
     */
     void updateProductById(Product product);

    /**
     * 删除产品
     * @param product
     */
     void deleteProductById(Product product);

    /**
     * 删除一类产品
     * @param product
     */
     void deleteProductByType(Product product);

}
