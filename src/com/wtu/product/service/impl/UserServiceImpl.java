package com.wtu.product.service.impl;

import java.util.List;

import org.apache.log4j.Logger;

import com.wtu.product.Constant;
import com.wtu.product.dao.UserDao;
import com.wtu.product.exception.ParameterException;
import com.wtu.product.exception.ServiceException;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.User;
import com.wtu.product.service.UserService;
import com.wtu.product.util.MD5Util;
import com.wtu.product.util.StringUtil;
/**
 * The class is implementation class of userService.
 * and control the connection.
 * */
public class UserServiceImpl implements UserService {

    private UserDao userDao;
    private final Logger logger = Logger.getLogger(UserServiceImpl.class);

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User login(String userName, String password) throws ParameterException,ServiceException{
        ParameterException parameterException = new ParameterException();
        if (StringUtil.isEmpty(userName)) {
            parameterException.addValue(Constant.ERROR_NAME_MESSAGE, Constant.NAME_BLANK);
        }

        if (StringUtil.isEmpty(password)) {
            parameterException.addValue(Constant.ERROR_PASSWORD_MESSAGE, Constant.PASSWORD_BLANK);
        }

        if (parameterException.isErrorMessage()) {
            throw parameterException;
        }
        User user = userDao.getUserByName(userName);
        System.out.println(user);
        if (user == null) {
            logger.info(Constant.ERROR);
            throw new ServiceException(Constant.NAME_ERROR_CODE, Constant.ERROR);
        }
        String md5Password = MD5Util.getEncryptPassword(password);
        if (!md5Password.equals(user.getPassword())) {
            logger.debug(Constant.ERROR);
            throw new ServiceException(Constant.NAME_ERROR_CODE, Constant.ERROR);
        }
        return user;
    }

    @Override
    public void updateUser(User user) {
        if(StringUtil.isEmpty(user.getPassword())) {
            userDao.updateUserNoPassword(user);
        }else {
            userDao.updateUser(user);
        }
    }

    @Override
    public User getUser(String userName) {
        User user = userDao.getUserByName(userName);
        return user;
    }

	@Override
	public void createUser(User user) {
		userDao.createUser(user);
	}

	@Override
	public List<User> getAllUser(Pagination pagination) {
		return userDao.queryAllUser(pagination);
	}

	@Override
	public void deleteUser(Integer userId) {
		userDao.deleteUser(userId);
	}

	@Override
	public void updateBusiness(User user) {
        userDao.updateBusiness(user);		
	}

	@Override
	public void addBusinessGoodsType(Integer userId, Integer typeId) {
		userDao.addBusinessGoodsType(userId, typeId);
	}

	@Override
	public User getUserById(Integer userId) {
		return userDao.getUserById(userId);
	}
}
