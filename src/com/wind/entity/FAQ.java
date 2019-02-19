package com.wind.entity;
/**
 * 问答信息实体类
 * @author 柴敏华
 * @date 2018年9月6日
 */
public class FAQ {
	private int faqId;//问答信息id
	private String question;//问题
	private String answer;//回答
	public int getFaqId() {
		return faqId;
	}
	public void setFaqId(int faqId) {
		this.faqId = faqId;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
}
