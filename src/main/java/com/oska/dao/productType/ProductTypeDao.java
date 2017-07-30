package com.oska.dao.productType;

import com.oska.model.Product;
import com.oska.model.ProductType;

import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
public interface ProductTypeDao {

    /**
     * 获取产品类型列表
     * @param productType
     * @return
     */
    List<ProductType> getProductType(ProductType productType);

    /**
     * 新增产品类型
     * @param productType
     */
     void addProductType(ProductType productType);

    /**
     * 修改产品类型
     * @param productType
     */
     void updateProductType(ProductType productType);

    /**
     * 删除产品类型
     * @param productType
     */
     void deleteProductType(ProductType productType);

}
