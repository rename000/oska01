package com.oska.enums;

/**
 * Created by liuh on 2017/6/14.
 */
public enum NewsType {

    //积分获取类型 0普通消费积分 1首次消费积分 2会员推荐
    ORDINARY(1,"企业新闻"),FIRST_CAST_POINT(2,"行业新闻"),FIRSTWEB(3,"首页新闻"),RECOM(4,"推荐新闻"),NOTHING(-1,"未知");

    private int value;
    private String msg;

    NewsType(int value, String msg) {
        this.value = value;
        this.msg = msg;
    }

    //获取枚举类（通过int型的参数）
    public static NewsType valueOfByInt(int value) {
        NewsType ProductType = null;
        switch (value) {
            case 1:
                ProductType = ORDINARY;
                break;
            case 2:
                ProductType = FIRST_CAST_POINT;
                break;
            case 3:
                ProductType = FIRSTWEB;
                break;
            case 4:
                ProductType = RECOM;
                break;
            default:
                ProductType = NOTHING;
                break;
        }
        return ProductType;
    }

    //获取枚举类（通过String型的参数）
    public static NewsType valueOfByString(String value) {
        NewsType ProductType = null;
        switch (value) {
            case "1":
                ProductType = ORDINARY;
                break;
            case "2":
                ProductType = FIRST_CAST_POINT;
                break;
            case "3":
                ProductType = FIRSTWEB;
                break;
            case "4":
                ProductType = RECOM;
                break;
            default:
                ProductType = NOTHING;
                break;
        }
        return ProductType;
    }

    public int getValue() {
        return value;
    }

    public String getMsg() {
        return msg;
    }
}
