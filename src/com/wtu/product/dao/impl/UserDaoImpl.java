package com.wtu.product.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.wtu.product.Constant;
import com.wtu.product.dao.UserDao;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.User;
import com.wtu.product.util.StringUtil;

/**
 * The class of user dao.
 * Gets user information by userName from database.
 * Update user information.
 * */
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

    private static final String CLASS_NAME = User.class.getName();

    @Override
    public User getUserByName(String userName) {
        if (StringUtil.isEmpty(userName)) {
            return null;
        }
        return getSqlSession().selectOne(CLASS_NAME + ".getUserByName", userName);
    }

    @Override
    public void updateUser(User user) {
        getSqlSession().update(CLASS_NAME + Constant.SQL_ID_USER_UPDATE_UESR_BY_ID, user);
    }

    @Override
    public void updateUserNoPassword(User user) {
        getSqlSession().update(CLASS_NAME + Constant.SQL_ID_USER_UPDATE_UESR_NO_PASSWORD, user);
    }

	@Override
	public void createUser(User user) {
		if(user != null) {
			int id = getSqlSession().insert(User.class.getName() + ".createUser", user);
		}
	}

	@Override
	public List<User> queryAllUser(Pagination pagination) {
		pagination.setTotalCount(this.getUserCount());
        if (pagination.getCurrentPage() > pagination.getPageCount()) {
            pagination.setCurrentPage(pagination.getPageCount());
        }
        Map<String, Object> parameterMap = new HashMap<String, Object>();
        parameterMap.put("offset", pagination.getOffset());
        parameterMap.put("pageSize", pagination.getPageSize());
		return getSqlSession().selectList(User.class.getName() + ".queryAllUser", parameterMap);
	}

	@Override
	public Integer getUserCount() {
		Integer amount = getSqlSession().selectOne(User.class.getName() + ".getUserCount");
		return amount;
	}

	@Override
	public void deleteUser(Integer userId) {
		getSqlSession().update(CLASS_NAME + ".deleteUser", userId);
	}

	@Override
	public void updateBusiness(User user) {
		getSqlSession().update(CLASS_NAME + ".updateBusiness", user);
	}

	@Override
	public void addBusinessGoodsType(Integer userId, Integer typeId) {
		Map<String, Object> parameterMap = new HashMap<String, Object>();
		parameterMap.put("userId", userId);
		parameterMap.put("typeId", typeId);
		getSqlSession().insert(CLASS_NAME + ".addBusinessGoodsType", parameterMap);
	}

	@Override
	public User getUserById(Integer userId) {
		return getSqlSession().selectOne(CLASS_NAME + ".getUserById", userId);
	}
}
