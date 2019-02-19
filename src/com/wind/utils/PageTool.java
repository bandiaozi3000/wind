package com.wind.utils;

import org.springframework.stereotype.Component;

import com.wind.constants.AnomalyConstants;

/**
 * 异常分页
 * @author 胡威
 * @date 2018年9月17日 上午9:39:49
 */
@Component
public class PageTool {
	private int pageNo;//页码
	private int totalPage;//总页数
	private int total;//总数
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		if(this.getTotal()%AnomalyConstants.PAGESIZE==0) {
			this.totalPage = this.getTotal()/AnomalyConstants.PAGESIZE;
		}else {
			this.totalPage=(this.getTotal()/AnomalyConstants.PAGESIZE)+1;
		}
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
}
