package com.springapp.mvc.controller;

import com.springapp.mvc.entity.User;
import com.springapp.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("createUser")
    public ModelAndView createEmployee(@ModelAttribute User user) {
        return new ModelAndView("addUser");
    }

    @RequestMapping("saveUser")
    public ModelAndView saveUser(@ModelAttribute User user) {
        userService.addUser(user);
        return new ModelAndView("redirect:getAllUsers");
    }

    @RequestMapping(value = {"getAllUsers", "/"})
    public ModelAndView getAllEmployees() {
        List userList = userService.getAllUsers();
        return new ModelAndView("userList", "userList", userList);
    }

    @RequestMapping(value = "/load", method = RequestMethod.GET)
    public ModelAndView load() {
        return new ModelAndView("/table");
    }

    @RequestMapping(value = "/load/{firstName}", method = RequestMethod.GET)
    public ModelAndView loadByName(@PathVariable("firstName") String firstName, ModelMap model) {
        model.put("userList", userService.findByFirstName(firstName));
        return new ModelAndView("/search", model);
    }
}