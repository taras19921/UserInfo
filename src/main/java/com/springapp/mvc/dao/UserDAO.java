package com.springapp.mvc.dao;

import com.springapp.mvc.entity.User;

import java.io.Serializable;
import java.util.List;

/**
 * Created by Тарас on 20.08.2015.
 */
public interface UserDAO<T extends Serializable> {
    public void addUser(User user);
    public User searchUser(int id);
    public User updateUser(User user);
    public void removeUser(int id);
    public List<User> getAllUsers();
    public List<User> findByFirstName(String firstName);
}
