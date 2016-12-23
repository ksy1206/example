package cmd.controller;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.AdminService;
import cmd.vo.AdminVO;




@Controller("admin")
@RequestMapping("/admin")
public class AdminController
{
    private final static Log logger = LogFactory.getLog(AdminController.class);
   
	@Resource(name = "adminService")
	private AdminService adminService;
	
	//메인페이지 호출
    @RequestMapping("/main.do")
    public String main(){      	  
    	return "admin/main";	
    }
    
  //로그인페이지 호출
    @RequestMapping("/login.do")
    public String login(){      	  
    	return "admin/login";	
    }
    
    //음식정보리스트
  	@RequestMapping(value="/get_food_list.do")
  	public ModelAndView get_food_list(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {
  		
  		List<Object> list = null;
  		list = adminService.get_food_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/food/food_list");
  		mav.addObject("list", list);
  	
  		return mav;

  	}
  	
    //음식등록 페이지 호출
    @RequestMapping("/write_food.do")
    public ModelAndView write_food(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {  
    	Map<String, Object> rMap = new HashMap<String, Object>();
    	
    	String travel_no = req.getParameter("travel_no"); 
    	String food_no = req.getParameter("food_no");
    	String fd_nm = req.getParameter("fd_nm");
    	
    	rMap.put("travel_no", travel_no);
    	rMap.put("food_no", food_no);
    	rMap.put("fd_nm", fd_nm);
    
    	
    	
    	List<Object> list = null;
    	
  		list = adminService.get_all_food_list(pMap);
  		
    	
  		ModelAndView mav = new ModelAndView("admin/food/write");
  		mav.addObject("rMap", rMap);
  		mav.addObject("list", list);
  		return mav;
    	
    }
  //여행지정보리스트
  	@RequestMapping(value="/get_travel_list.do")
  	public ModelAndView get_travel_list(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {
  		
  		List<Object> list = null;
  		list = adminService.get_travel_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/travel/travel_list");
  		mav.addObject("list", list);
  	
  		return mav;

  	}
  	
  //여행정보 등록
  	@RequestMapping(value = "/save_travel.do")
  	public ModelAndView save_travel(HttpServletRequest req, HttpServletResponse res,
  			@RequestParam Map<String, Object> pMap) throws Exception {

  		ModelAndView output = new ModelAndView();
  		Map<String, Object> rMap = new HashMap<String, Object>();
  		String result = null;

  		try {
  			result = this.adminService.save_travel(pMap);
  		} catch (Exception e) {
  			throw new Exception(e.toString());
  		}

  		rMap.put("result", result);
  		output.addAllObjects(rMap);
  		output.setViewName("jsonView");

  		return output;

  	}
  	
    //여행정보 페이지 호출
    @RequestMapping("/get_update_travel.do")
    public ModelAndView get_update_travel(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {  
    	List<Object> list = null;
  		list = adminService.get_all_travel_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/travel/update");
  		mav.addObject("list", list);
  	
  		return mav;
    	
    }
	

	
	//여행정보 삭제
	@RequestMapping(value = "/delete_travel.do")
	public ModelAndView delete_travel(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.delete_travel(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	//여행정보 수정
	@RequestMapping(value = "/update_travel.do")
	public ModelAndView update_travel(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.update_travel(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
  	
  	
    //여행지정보등록 페이지 호출
    @RequestMapping("/write_travel.do")
    public String write_travel(){      	  
    	return "admin/travel/write";	
    }
  	
  	 //공지사항리스트
  	@RequestMapping(value="/get_notice_list.do")
  	public ModelAndView get_notice_list(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {
  		
  		List<Object> list = null;
  		list = adminService.get_notice_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/notice/notice_list");
  		mav.addObject("list", list);
  	
  		return mav;

  	}	
  	
  //공지등록 페이지 호출
    @RequestMapping("/write_notice.do")
    public String write_notice(){      	  
    	return "admin/notice/write";	
    }
    
    //공지수정 페이지 호출
    @RequestMapping("/get_update_notice.do")
    public ModelAndView get_update_notice(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {  
    	List<Object> list = null;
  		list = adminService.get_notice_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/notice/update");
  		mav.addObject("list", list);
  	
  		return mav;
    	
    }
	
	//공지사항 등록
	@RequestMapping(value = "/save_notice.do")
	public ModelAndView save_notice(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.save_notice(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	//공지사항 삭제
	@RequestMapping(value = "/delete_notice.do")
	public ModelAndView delete_notice(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.delete_notice(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	//공지사항 수정
	@RequestMapping(value = "/update_notice.do")
	public ModelAndView update_notice(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.update_notice(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	
	
	 //추가정보리스트
  	@RequestMapping(value="/get_add_info_list.do")
  	public ModelAndView get_add_info_list(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {
  		
  		List<Object> list = null;
  		list = adminService.get_add_info_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/add_info/add_info_list");
  		mav.addObject("list", list);
  	
  		return mav;

  	}	
  	
  	//추가정보 수정
  	@RequestMapping(value = "/update_add_info.do")
  	public ModelAndView update_add_info(HttpServletRequest req, HttpServletResponse res,
  			@RequestParam Map<String, Object> pMap) throws Exception {

  		ModelAndView output = new ModelAndView();
  		Map<String, Object> rMap = new HashMap<String, Object>();
  		String result = null;

  		try {
  			result = this.adminService.update_add_info(pMap);
  		} catch (Exception e) {
  			throw new Exception(e.toString());
  		}

  		rMap.put("result", result);
  		output.addAllObjects(rMap);
  		output.setViewName("jsonView");

  		return output;

  	}
  	
  	
  	
  	
  //음식정보 등록
  	@RequestMapping(value = "/save_food.do")
  	public ModelAndView save_food(HttpServletRequest req, HttpServletResponse res,
  			@RequestParam Map<String, Object> pMap) throws Exception {

  		ModelAndView output = new ModelAndView();
  		Map<String, Object> rMap = new HashMap<String, Object>();
  		String result = null;

  		try {
  			result = this.adminService.save_food(pMap);
  		} catch (Exception e) {
  			throw new Exception(e.toString());
  		}

  		rMap.put("result", result);
  		output.addAllObjects(rMap);
  		output.setViewName("jsonView");

  		return output;

  	}

	
	//음식정보 삭제
	@RequestMapping(value = "/delete_food.do")
	public ModelAndView delete_food(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.delete_food(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	 //축제지정보리스트
  	@RequestMapping(value="/get_party_list.do")
  	public ModelAndView get_party_list(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {
  		
  		List<Object> list = null;
  		list = adminService.get_party_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/party/party_list");
  		mav.addObject("list", list);
  	
  		return mav;

  	}
  	
  //축제정보 등록
  	@RequestMapping(value = "/save_party.do")
  	public ModelAndView save_party(HttpServletRequest req, HttpServletResponse res,
  			@RequestParam Map<String, Object> pMap) throws Exception {

  		ModelAndView output = new ModelAndView();
  		Map<String, Object> rMap = new HashMap<String, Object>();
  		String result = null;

  		try {
  			result = this.adminService.save_party(pMap);
  		} catch (Exception e) {
  			throw new Exception(e.toString());
  		}

  		rMap.put("result", result);
  		output.addAllObjects(rMap);
  		output.setViewName("jsonView");

  		return output;

  	}
  	
    //축제정보 페이지 호출
    @RequestMapping("/get_update_party.do")
    public ModelAndView get_update_party(HttpServletRequest req, HttpServletResponse res,
   			@RequestParam Map<String, Object> pMap) throws Exception {  
    	List<Object> list = null;
  		list = adminService.get_all_party_list(pMap);
  		
  		ModelAndView mav = new ModelAndView("admin/party/update");
  		mav.addObject("list", list);
  	
  		return mav;
    	
    }
	

	
	//축제정보 삭제
	@RequestMapping(value = "/delete_party.do")
	public ModelAndView delete_party(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.delete_party(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
	
	//축제정보 수정
	@RequestMapping(value = "/update_party.do")
	public ModelAndView update_party(HttpServletRequest req, HttpServletResponse res,
			@RequestParam Map<String, Object> pMap) throws Exception {

		ModelAndView output = new ModelAndView();
		Map<String, Object> rMap = new HashMap<String, Object>();
		String result = null;

		try {
			result = this.adminService.update_party(pMap);
		} catch (Exception e) {
			throw new Exception(e.toString());
		}

		rMap.put("result", result);
		output.addAllObjects(rMap);
		output.setViewName("jsonView");

		return output;

	}
  	
  	
    //축제지정보등록 페이지 호출
    @RequestMapping("/write_party.do")
    public String write_party(){      	  
    	return "admin/party/write";	
    }
  	
}

