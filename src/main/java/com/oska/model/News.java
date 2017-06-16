package com.oska.model;

import java.util.Date;

public class News {
    private Integer newsId;

    private String newsTitle;

    private String newsDesc;

    private String createTime;

    private String newsType;

    private String newsInfo;

    public String getNewsType() {
        return newsType;
    }

    public void setNewsType(String newsType) {
        this.newsType = newsType;
    }

    public Integer getNewsId() {
        return newsId;
    }

    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    public String getNewsTitle() {
        return newsTitle;
    }

    public void setNewsTitle(String newsTitle) {
        this.newsTitle = newsTitle == null ? null : newsTitle.trim();
    }

    public String getNewsDesc() {
        return newsDesc;
    }

    public void setNewsDesc(String newsDesc) {
        this.newsDesc = newsDesc == null ? null : newsDesc.trim();
    }

    public String getNewsInfo() {
        return newsInfo;
    }

    public void setNewsInfo(String newsInfo) {
        this.newsInfo = newsInfo == null ? null : newsInfo.trim();
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }
}