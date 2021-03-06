package org.maruhan.controller;

import org.maruhan.domain.BoardVO;
import org.maruhan.service.BoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	
	@RequestMapping(value = "/list" , method= RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		logger.info("BoardController........ info");
		
		
//		List<BoardVO> list = new ArrayList<BoardVO>();
//		for (int i = 0; i < 10; i++) {
//			BoardVO vo = new BoardVO();
//			vo.setBno(i);
//			vo.setTitle("제목"+i);
//			vo.setWriter("작성자"+i);
//			vo.setContent("내용"+i);
//			list.add(vo);
//		}
//		
//		model.addAttribute("list",list);
		
		
		model.addAttribute("list", service.list());
	}
	
	
	
	@RequestMapping(value = "/create" , method= RequestMethod.GET)
	public String createGET() throws Exception{
		logger.info("create get......");
		
		return "/board/create";
}
	
	@RequestMapping(value = "/create" , method= RequestMethod.POST)
	public String createPOST(BoardVO vo, Model model) throws Exception{
		
		logger.info("create post......");
				
	    service.regist(vo);
		
		model.addAttribute("msg", "글쓰기 완료!");
		
		return "/board/success";
	}
	@RequestMapping(value = "/read" , method= RequestMethod.GET)
	public String readGET(@RequestParam("bno") int bno, Model model) throws Exception{
		logger.info("Read get......");
		
		model.addAttribute("read", service.view(bno));
		return "/board/read";
}
	
	@RequestMapping(value = "/remove" , method= RequestMethod.POST)
	public String removePOST(@RequestParam("bno") int bno, Model model) throws Exception{
		logger.info("remove post......");
		
		service.remove(bno);
		
		model.addAttribute("msg", "삭제완료!");
		
		return "/board/success";
	}
	
	
	@RequestMapping(value = "/modify" , method= RequestMethod.GET)
	public String modifyGET(@RequestParam("bno") int bno, Model model) throws Exception{
		logger.info("modify get......");
		
		model.addAttribute("board", service.view(bno));
		return "/board/modify";
}
	
	@RequestMapping(value = "/modify" , method= RequestMethod.POST)
	public String modifyPOST(BoardVO vo, Model model) throws Exception{
		
		logger.info("modify post......");
				
	    service.update(vo);
		
		model.addAttribute("msg", "수정 완료!");
		
		return "/board/success";
	}
}
