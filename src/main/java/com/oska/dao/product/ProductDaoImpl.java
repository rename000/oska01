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
        return oskaDao.selectList("getProductList",product);
    }

    /**
     * 新增产品
     * @param product
     */
    @Override
    public void addProduct(Product product) {
        oskaDao.insert("addProduct",product);
    }

    /**
     * 修改产品信息
     * @param product
     */
    @Override
    public void updateProductById(Product product) {
        oskaDao.update("updateProductById",product);
    }

    /**
     * 删除产品
     * @param product
     */
    @Override
    public void deleteProductById(Product product) {
        oskaDao.delete("deleteProductById",product);
    }
}
