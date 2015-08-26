package com.springapp.mvc.dao.impl;

import com.springapp.mvc.dao.UserDAO;
import com.springapp.mvc.entity.User;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO<User> {

    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void addUser(User user) {
        this.sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public User searchUser(int id) {
        return (User)sessionFactory.getCurrentSession().get(User.class, id);
    }

    @Override
    public User updateUser(User user) {
        sessionFactory.getCurrentSession().update(user);
        return user;
    }

    @Override
    public void removeUser(int id) {
        User user = new User();
        user.setUserId(id);
        sessionFactory.getCurrentSession().delete(user);
    }
    //@Transactional
    public List<User> getAllUsers() {
        return sessionFactory.getCurrentSession().createQuery("from User ").list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<User> findByFirstName(String firstName) {
        return sessionFactory.getCurrentSession().createCriteria(User.class)
                .add(Restrictions.like("firstName", firstName + "%").ignoreCase()).list();
    }
}
