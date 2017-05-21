package com.wtu.product.dao;

import java.util.List;

import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.TypeGroup;

public interface GoodsDao {
	public void createGoods(Goods Goods);
	public List<Goods> queryAllGoods(Pagination pagination);
	public List<Goods> queryGoodsByUserId(Pagination pagination, Integer userId);
	public Integer getGoodsCount(String keyword);
	public Integer getGoodsCountByUserId(Integer userId);
	public List<TypeGroup> getAllTypeGroup();
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId);
}
