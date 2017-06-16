package com.oska.enums;

/**
 * Created by liuh on 2017/6/14.
 */
public enum ProductType {

    //积分获取类型 0普通消费积分 1首次消费积分 2会员推荐
    ORDINARY(1,"橡木仿古"),FIRST_CAST_POINT(2,"橡木人字拼"),RECOMMEND(3,"原木手工拼花"),
    CHANGE(4,"强化地板"),NOTHING(-1,"未知");

    private int value;
    private String msg;

    ProductType(int value,String msg) {
        this.value = value;
        this.msg = msg;
    }

    //获取枚举类（通过int型的参数）
    public static ProductType valueOfByInt(int value) {
        ProductType ProductType = null;
        switch (value) {
            case 1:
                ProductType = ORDINARY;
                break;
            case 2:
                ProductType = FIRST_CAST_POINT;
                break;
            case 3:
                ProductType = RECOMMEND;
                break;
            case 4:
                ProductType = CHANGE;
                break;
            default:
                ProductType = NOTHING;
                break;
        }
        return ProductType;
    }

    //获取枚举类（通过String型的参数）
    public static ProductType valueOfByString(String value) {
        ProductType ProductType = null;
        switch (value) {
            case "1":
                ProductType = ORDINARY;
                break;
            case "2":
                ProductType = FIRST_CAST_POINT;
                break;
            case "3":
                ProductType = RECOMMEND;
                break;
            case "4":
                ProductType = CHANGE;
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
