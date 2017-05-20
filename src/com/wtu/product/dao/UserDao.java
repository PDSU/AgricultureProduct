package com.wtu.product.dao;

import java.util.List;

import com.wtu.product.model.Pagination;
import com.wtu.product.model.User;
/**
 * The interface of user dao.
 * Gets user information by userName from database.
 * Update user information.
 * */
public interface UserDao {
    public User getUserByName(String userName);
    public User getUserById(Integer userId);
    public void updateUser(User user);
    public void updateUserNoPassword(User user);
    public void createUser(User user);
    public List<User> queryAllUser(Pagination pagination);
    public void updateBusiness(User user);
    public void addBusinessGoodsType(Integer userId,Integer typeId);
    public Integer getUserCount();
    public void deleteUser(Integer userId);
}
