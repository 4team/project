package org.maruhan.controller;

import org.maruhan.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//@Autowired
	//private BoardService service;
	//은혜가 추가 수정함.
	
	
	@RequestMapping(value = "/list" , method= RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("BoardController........ info");
		
		//model.addAttribute("list", service.listAll());
	}

}
