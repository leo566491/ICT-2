/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.controller;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author hy
 */
@Controller
public class EmployeeController {

    @RequestMapping(value = "/realpath", method = RequestMethod.GET)
    @ResponseBody
    public String test(HttpSession session,@RequestParam(value = "path") String path) {
        return session.getServletContext().getRealPath(path);
    }
}
