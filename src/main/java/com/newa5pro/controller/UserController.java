/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.controller;

import com.newa5pro.user.User;
import com.newa5pro.user.UserService;
import javax.servlet.http.HttpSession;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author hy
 */
@Controller
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public @ResponseBody
    String login(@RequestParam(value = "email", required = false) String email, @RequestParam(value = "pass", required = false) String passwd, HttpSession session
    ) throws JSONException {
        User user = new User();
        user.email = email;
        user = userService.login(user, passwd);
        JSONObject res = new JSONObject();
        if (user == null) {

            res.put("state", "mismatch");
            return res.toString();
        }
        res.put("state", "success");
        session.setAttribute("id", user.Id);
        session.setAttribute("type", user.type);
        res.put("id", user.Id);
        res.put("type", user.type);
        return res.toString();

    }

    @RequestMapping(value = "/info")//add post when deployed
    public @ResponseBody
    String info(HttpSession session) throws JSONException {
        JSONObject res = new JSONObject();
        String type = (String) session.getAttribute("type");
        if (type != null) {
            res.put("id", session.getAttribute("id"));
            res.put("type", session.getAttribute("type"));
        } else {
            res.put("id", -1);
            res.put("type", "visitor");
        }
        return res.toString();
    }

    @RequestMapping(value = "/reg/{type}", method = RequestMethod.POST)
    public @ResponseBody
    String personalRegister(
            @RequestParam(value = "f_name") String fName, @RequestParam(value = "l_name") String lName, @RequestParam(value = "com_name", required = false, defaultValue = "") String comName, @RequestParam(value = "email") String email, @RequestParam(value = "pass") String pass, @PathVariable("type") String type
    ) throws JSONException {
        User user = new User();
        user.comname = comName;
        user.email = email;
        user.fname = fName;
        user.lname = lName;
        user.type = type;
        if (userService.register(user, pass)) {
            return "suuccess";
        } else {
            return "fail";
        }

    }

}
