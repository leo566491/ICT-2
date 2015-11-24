/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.controller;

import javax.servlet.http.HttpSession;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author hy
 */
@Controller
public class MainController{
 
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String index(ModelMap model) {
      return "home";
   }
   
   @RequestMapping(value = "/{page}.html", method = RequestMethod.GET)
   public String staticMapping(ModelMap model, @PathVariable("page") String page) {
       
      return page;
   }
   
   @RequestMapping(value = "/test", method = RequestMethod.GET)
   @ResponseBody
   public String test(ModelMap model,HttpSession session) {
       session.setAttribute("id", "id");
        return (String)session.getAttribute("id");
   }
}
   
   