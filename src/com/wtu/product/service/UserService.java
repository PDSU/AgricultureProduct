package com.wtu.product.service;

import java.util.List;

import com.wtu.product.exception.ParameterException;
import com.wtu.product.exception.ServiceException;
import com.wtu.product.model.Pagination;
import com.wtu.product.model.User;
/**
 * The interface of UserService.
 * */
public interface UserService {

    public User login(String userName, String password) throws ParameterException,ServiceException;

    public void updateUser(User user);

    public User getUser(String userName);
    
    public User getUserById(Integer userId);
    
    public void createUser(User user);
    
    public void updateBusiness(User user);
    
    public void addBusinessGoodsType(Integer userId,Integer typeId);
    
    public List<User> getAllUser(Pagination pagination);
    
    public void deleteUser(Integer userId);
}
