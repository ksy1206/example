package cmd.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.MainService;
import cmd.vo.NoticeVO;




@Controller("main")
@RequestMapping("/main")
public class MainController
{
   private final static Log logger = LogFactory.getLog(MainController.class);
   
   @Resource(name="mainService")
   private MainService mainService;
   

	@RequestMapping(value="/test.do")
	public ModelAndView test() throws Exception {
		ModelAndView mav = new ModelAndView("header_memu");
		return mav;
	}
   
	//메인 페이지 호출
	@RequestMapping(value="/main.do")
	public ModelAndView main() throws Exception {
		ModelAndView mav = new ModelAndView("main/main");
		return mav;
	}
	
	//공지사항 페이지 호출
	@RequestMapping(value="/notice_list.do")
	public ModelAndView notice_list() throws Exception {
		List<Object> list = null;
		list = mainService.get_notice_list();
		ModelAndView mav = new ModelAndView("main/notice/notice_list");
		mav.addObject("list", list);
		return mav;
	}
	
	//공지사항 상세 호출
	@RequestMapping(value="/notice_details.do")
	public ModelAndView notice_details(@RequestParam Map<String, Object> pMap) throws Exception {
		NoticeVO noticeVo = null;
		noticeVo = (NoticeVO) mainService.get_notice_no(pMap);
		ModelAndView mav = new ModelAndView("main/notice/notice_details");
		mav.addObject("noticeVo", noticeVo);
		return mav;
	}
	
	//문의 페이지 호출
	@RequestMapping(value="/inquire.do")
	public ModelAndView inquire() throws Exception {
		Map<String, Object> result = new HashMap<>();
		result = (Map<String, Object>) mainService.get_inquire();
		ModelAndView mav = new ModelAndView("main/inquire");
		mav.addObject("result", result);
		return mav;
	}
	
	//검색 페이지 호출
	@RequestMapping(value="/search.do")
	public ModelAndView search() throws Exception {		
		ModelAndView mav = new ModelAndView("main/search");
		return mav;
	}
	
	//데이터 검색
	@RequestMapping(value="/search_list.do")
	public ModelAndView search(@RequestParam Map<String, Object> pMap) throws Exception {
		List<Object> party_list = null;
		List<Object> travel_list = null;
		party_list = mainService.get_party_list(pMap);
		travel_list = mainService.get_travel_list(pMap);
		ModelAndView mav = new ModelAndView();
		mav.addObject("party_list", party_list);
		mav.addObject("travel_list", travel_list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	//약관 페이지 호출
	@RequestMapping(value="/clause.do")
	public ModelAndView clause() throws Exception {
		ModelAndView mav = new ModelAndView("main/clause");
		return mav;
	}
  	
}

