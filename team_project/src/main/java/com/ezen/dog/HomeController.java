package com.ezen.dog;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.dog.cart.CartDTO;
import com.ezen.dog.cart.Cservice;
import com.ezen.dog.product.ProductDTO;

@Controller
public class HomeController {
	
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/")
	public String main1(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		hs.setAttribute("loginstate", false);
		return "main";
	}
	
	@RequestMapping(value = "/main")
	public String main2() {
		return "main";
	}
	
	@RequestMapping(value = "/info")
	public String main3() {
		return "info";
	}

}
