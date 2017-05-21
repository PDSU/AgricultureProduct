package com.wtu.product.service;

import java.util.List;

import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.TypeGroup;

public interface GoodsService {

	public void saveGoods(Goods goods);
	public List<Goods> getGoodsList(Pagination pagination);
	public List<Goods> getGoodsListByUserId(Pagination pagination, Integer userId);
	public List<TypeGroup> getAllTypeGroup();
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId);
}
