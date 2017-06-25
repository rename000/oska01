package com.oska.model;

import java.util.Date;

public class Cases {
    private Integer caseId;

    private String caseName;

    private String createTime;

    private String caseImg;

    private Integer count;
    private Integer nub = 0;
    private Integer size = 10;

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getNub() {
        return nub;
    }

    public void setNub(Integer nub) {
        this.nub = nub;
    }

    public Integer getSize() {
        return size;
    }

    public void setSize(Integer size) {
        this.size = size;
    }

    public Integer getCaseId() {
        return caseId;
    }

    public void setCaseId(Integer caseId) {
        this.caseId = caseId;
    }

    public String getCaseName() {
        return caseName;
    }

    public void setCaseName(String caseName) {
        this.caseName = caseName;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getCaseImg() {
        return caseImg;
    }

    public void setCaseImg(String caseImg) {
        this.caseImg = caseImg;
    }
}