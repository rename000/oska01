package com.oska.dao.cases;

import com.oska.dao.OskaDao;
import com.oska.model.Cases;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by liuh on 2017/6/23.
 */
@Repository(value = "casesDao")
public class CasesDaoImpl implements CasesDao {

    @Resource
    OskaDao oskaDao;

    @Override
    public List<Cases> getCasesList(Cases cases) {
        return oskaDao.selectList("getCasesList",cases,cases.getNub(),cases.getSize());
    }

    @Override
    public void addCases(Cases cases) {
        oskaDao.insert("addCases",cases);
    }

    @Override
    public void updateCases(Cases cases) {
        oskaDao.update("updateCases",cases);
    }

    @Override
    public void deleteCases(Cases cases) {
        oskaDao.delete("deleteCases",cases);
    }
}
