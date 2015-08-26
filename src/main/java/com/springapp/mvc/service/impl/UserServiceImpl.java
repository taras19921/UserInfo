package com.springapp.mvc.service.impl;

import com.springapp.mvc.dao.UserDAO;
import com.springapp.mvc.entity.User;
import com.springapp.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    public void addUser(User user) {
        userDAO.addUser(user);
    }

    @Override
    public User searchUser(int id) {
        return userDAO.searchUser(id);
    }

    public User updateUser(User user) {
        return userDAO.updateUser(user);
    }

    @Override
    public void removeUser(int id) {
        userDAO.removeUser(id);
    }

    public List<User> getAllUsers() {
        return userDAO.getAllUsers();
    }

    public List<User> findByFirstName(String firstName) {
        return userDAO.findByFirstName(firstName);
    }
}
