package com.wtu.product.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.wtu.product.dao.GoodsDao;
import com.wtu.product.model.Goods;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.ProductDescripe;
import com.wtu.product.model.ProductType;
import com.wtu.product.model.TypeGroup;

public class GoodsDaoImpl extends SqlSessionDaoSupport implements GoodsDao{

    @Override
    public void createGoods(Goods goods) {
        if(goods != null) {
            int id = getSqlSession().insert(Goods.class.getName() + ".createGoods", goods);
        }

    }

    @Override
    public List<Goods> queryAllGoods(Pagination pagination) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public Integer getGoodsCount(String keyword) {
        Integer amount = getSqlSession().selectOne(Goods.class.getName() + ".getGoodsCount");
        return amount;
    }

    @Override
    public List<Goods> queryGoodsByUserId(Pagination pagination, Integer userId) {
        pagination.setTotalCount(this.getGoodsCountByUserId(userId));
//        if (pagination.getCurrentPage() > pagination.getPageCount()) {
//            pagination.setCurrentPage(pagination.getPageCount());
//        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("offset", 0);
        parameterMap.put("pageSize", 8);
        parameterMap.put("userId", userId);
        return getSqlSession().selectList(Goods.class.getName() + ".queryGoodsByUserId", parameterMap);
    }

    @Override
    public Integer getGoodsCountByUserId(Integer userId) {
        Integer amount = getSqlSession().selectOne(Goods.class.getName() + ".getGoodsCountByUserId");
        return amount;
    }

	@Override
	public List<TypeGroup> getAllTypeGroup() {
		return getSqlSession().selectList(ProductType.class.getName() + ".getTypeGroups");
	}

	@Override
	public List<ProductDescripe> getDescripeByProductType(Integer productTypeId) {
		return getSqlSession().selectList(ProductDescripe.class.getName() + ".getProductDescripe",productTypeId);
	}


}
