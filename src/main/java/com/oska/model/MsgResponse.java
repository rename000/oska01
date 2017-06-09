package com.oska.model;

/**
 * 响应信息格式
 */
public class MsgResponse {

    private String code;      //返回的code码
    private String msg;         //返回的消息
    private Object object;      //返回的数据

    public MsgResponse() {
    }

    public MsgResponse(String code) {
        this.code = code;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getObject() {
        return object;
    }

    public void setObject(Object object) {
        this.object = object;
    }

}
