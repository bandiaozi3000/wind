package com.wind.utils;
/**
 * 分页工具类2
 * @author Administrator
 *
 */
public class PageUtil {
	private int totalCount;//数据总条数
	private int pageCount;//总页数
	private int current;//当前页
	
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageCount() {
		return pageCount;
	}
	/**
	 * 计算总页数  需要每页显示的数量和总条数
	 * @param page
	 */
	public void setPageCount(int page) {
		int pageCount1 = (this.totalCount%page==0)?(this.totalCount/page):(this.totalCount/page+1);
		this.pageCount = pageCount1;
	}
	public int getCurrent() {
		
		return current;
	}
	public void setCurrent(int current) {
		if(current<1){
			current=1;
		}else if(current>this.getPageCount() && this.getPageCount() !=0){
			current=this.pageCount;
		}
		this.current = current;
	}
	
}

