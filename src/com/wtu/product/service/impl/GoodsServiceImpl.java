package com.wtu.product.service.impl;

import java.util.List;

import com.wtu.product.dao.GoodsDao;
import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;
import com.wtu.product.service.GoodsService;

public class GoodsServiceImpl implements GoodsService {

	private GoodsDao goodsDao;

    public void setGoodsDao(GoodsDao goodsDao) {
        this.goodsDao = goodsDao;
    }


	@Override
	public List<Goods> getGoodsList(Pagination pagination) {
		List<Goods> goodsList = goodsDao.queryAllGoods(pagination);
		return goodsList;
	}

    @Override
    public void saveGoods(Goods goods) {
        goodsDao.createGoods(goods);

    }


    @Override
    public List<Goods> getGoodsListByUserId(Pagination pagination, Integer userId) {
        List<Goods> goodsList = goodsDao.queryGoodsByUserId(pagination, userId);
        return goodsList;
    }

}
