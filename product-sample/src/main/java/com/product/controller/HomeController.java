package com.product.controller;



import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.log4j.Logger;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.product.vo.Product;
import com.product.vo.ProductCategory;

@Controller
public class HomeController {
	private static final Logger logger = Logger.getLogger(HomeController.class);
	
	
	@RequestMapping(value="/home", method=RequestMethod.GET)
	public ModelAndView homePage() {
		logger.info("open home page");
		ModelAndView model = new ModelAndView();
		model.setViewName("welcome");
		return model;
	}
	
	@RequestMapping(value="/products", method=RequestMethod.GET)
	public ModelAndView productPage() {
		logger.info("productPage");
		ModelAndView modelAndView = null;
		try {
			modelAndView = new ModelAndView();
			RestTemplate rs = new RestTemplate();
			ResponseEntity<String> strResponse = rs.getForEntity("http://13.90.205.131/categories", String.class);
			ObjectMapper mapper = new ObjectMapper();
			List<Product> prodList = Arrays.asList(mapper.readValue(strResponse.getBody(),  Product[].class));
			logger.info("Number of products: " + prodList.size());
			modelAndView.addObject("productList", prodList);
			modelAndView.setViewName("product");
		}catch (Exception e) {
			logger.error("Exception: while getting the data: ", e);
		}
		return modelAndView;
	}
	
	@RequestMapping(value="/create-products", method=RequestMethod.GET)
	public ModelAndView createProductPage() {
		logger.info("createProductPage");
		ModelAndView model = new ModelAndView();
		model.setViewName("create-products");
		return model;
	}
	
	@RequestMapping(value="/product-sample/save-product", method=RequestMethod.POST)
	@ResponseBody
	public String savProduct(@RequestBody String product, ModelMap model) {
		logger.info("savProduct..");
		String message = "error";
		try {
			RestTemplate rs = new RestTemplate();
			ResponseEntity<Boolean> response = rs.postForEntity("http://13.90.205.131/categories", product, Boolean.class);
			if(response.getBody() != null && response.getBody().equals("Inserted")) {
				message = "success";
			}
		}catch (Exception e) {
			logger.error("Exception while saving the product category");
		}
		return message;
	}
}
