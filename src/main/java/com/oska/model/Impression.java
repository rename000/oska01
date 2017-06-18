package com.oska.model;

/**
 * Created by liuh on 2017/6/18.
 */
public class Impression {
    private String impressionId;
    private String impressionDesc;
    private String createTime;

    public String getImpressionId() {
        return impressionId;
    }

    public void setImpressionId(String impressionId) {
        this.impressionId = impressionId;
    }

    public String getImpressionDesc() {
        return impressionDesc;
    }

    public void setImpressionDesc(String impressionDesc) {
        this.impressionDesc = impressionDesc;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}
