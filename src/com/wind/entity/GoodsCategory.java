package com.wind.entity;
/**
 * 商品分类表
 * @author 吕擎擎
 * @date 2018年9月6日下午2:43:39
 */
public class GoodsCategory {
		private int goodsCategoryId;  //商品分类id
		
		private String goodsCategoryName;   //商品分类名称

		
		public int getGoodsCategoryId() {
			return goodsCategoryId;
		}

		public void setGoodsCategoryId(int goodsCategoryId) {
			this.goodsCategoryId = goodsCategoryId;
		}

		public String getGoodsCategoryName() {
			return goodsCategoryName;
		}

		public void setGoodsCategoryName(String goodsCategoryName) {
			this.goodsCategoryName = goodsCategoryName;
		}
		
		
		
}
