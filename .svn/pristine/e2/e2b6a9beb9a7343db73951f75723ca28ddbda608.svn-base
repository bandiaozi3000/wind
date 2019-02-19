package com.wind.utils;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.wind.constants.AnomalyConstants;
/**
 * 分页
 * @author 柴敏华
 * @date 2018年9月8日 下午2:37:11
 */
@Component
public class PageUtilChai {
		private int totalCount;//数据总条数
		private int pageCount;//总页数
		private int current;//当前页数
		
		
		public int getTotalCount() {
			return totalCount;
		}
		public void setTotalCount(int totalCount) {
			this.totalCount = totalCount;
		}
		public int getPageCount() {
			pageCount=(this.totalCount%AnomalyConstants.PAGESIZE==0)?(this.totalCount/AnomalyConstants.PAGESIZE):(this.totalCount/AnomalyConstants.PAGESIZE+1);
			return pageCount;
		}
		
		
		public void setPageCount(int pageCount) {
			this.pageCount = pageCount;
		}
		
		
		public int getCurrent() {
			
			return current;
		}
		public void setCurrent(int current) {
			//如果当前页数小于1，则让它强制为第一页
			if(current<1){
				current=1;
			}else if(current>this.getPageCount()&&this.getPageCount()!=0){
				//如果当前页数大于总页数，则让它强制为最后一页
				current=this.pageCount;
			}
			this.current = current;
		}
		
}
