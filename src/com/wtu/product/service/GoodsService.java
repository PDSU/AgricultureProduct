package com.wtu.product.service;

import java.util.List;

import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;

public interface GoodsService {

	public void saveGoods(Goods goods);
	public List<Goods> getGoodsList(Pagination pagination);
	public List<Goods> getGoodsListByUserId(Pagination pagination, Integer userId);
}
