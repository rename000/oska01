package com.oska.dao.productType;

import com.oska.dao.OskaDao;
import com.oska.dao.product.ProductDao;
import com.oska.model.Product;
import com.oska.model.ProductType;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/8.
 */
@Repository(value = "productTypeDao")
public class ProductTypeDaoImpl implements ProductTypeDao {

    @Resource
    private OskaDao oskaDao;

    @Override
    public List<ProductType> getProductType(ProductType productType) {
        return oskaDao.selectList("getProductType",productType);
    }

    @Override
    public void addProductType(ProductType productType) {
        oskaDao.insert("addProductType",productType);
    }

    @Override
    public void updateProductType(ProductType productType) {
        oskaDao.update("updateProductType",productType);
    }

    @Override
    public void deleteProductType(ProductType productType) {
        oskaDao.delete("deleteProductType",productType);
    }
}
