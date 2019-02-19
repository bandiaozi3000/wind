package com.wind.entity;
/**
 * @Description 事件类
 * @author 曹潇
 * @date 2018年9月11日下午5:09:44
 */
public class Event {
    private int eventId; //事件ID
    private String eventName; //事件名
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
}
