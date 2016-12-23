package cmd.controller;



import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.TravelService;
import cmd.vo.FoodVO;
import cmd.vo.TravelVO;




@Controller("travel")
@RequestMapping("/travel")
public class TravelController
{
	private final static Log logger = LogFactory.getLog(TravelController.class);

	@Resource(name = "travelService")
	private TravelService travelService;
   
	//여행지 메인 페이지 호출
	@RequestMapping(value="/main.do")
	public ModelAndView main() throws Exception {
		ModelAndView mav = new ModelAndView("travel/main");
		return mav;
	}
	
	//여행지 리스트 페이지 호출
	@RequestMapping(value="/move_list.do")
	public ModelAndView move_list(@RequestParam Map<String, Object> pMap) throws Exception {
		
		String check_value = (String) pMap.get("check_value");
		String search[] = check_value.split(",");
		
		for(int i=0; i<search.length; i++){
			pMap.put("search_0"+i, search[i]);
		}
		
		List<Object> list = null;
		list = travelService.qet_travel_list(pMap);
		ModelAndView mav = new ModelAndView("travel/travel_list");
		mav.addObject("title", pMap.get("check_value"));
		mav.addObject("list", list);
		return mav;
	}
	
	//여행지 지도 페이지 호출
	@RequestMapping(value="/move_map.do")
	public ModelAndView move_map(@RequestParam Map<String, Object> pMap) throws Exception {
		
		String data = (String) pMap.get("data");
		
		ModelAndView mav = new ModelAndView("travel/travel_map");
		mav.addObject("data", data);
		return mav;
	}
	
   //여행지 상세 페이지 호출
	@RequestMapping(value="/travel_details.do")
	public ModelAndView travel_details(@RequestParam Map<String, Object> pMap) throws Exception {
		TravelVO travelVo = null;
		List<Object> food_list = null;
		travelVo = (TravelVO) travelService.get_travel_no(pMap);
		food_list = travelService.get_food_list(pMap);
		ModelAndView mav = new ModelAndView("travel/travel_details");
		mav.addObject("travelVo", travelVo);
		mav.addObject("food_list", food_list);
		return mav;
	}
	
	//먹거리 이미지 리스트 가져오기
	@RequestMapping(value="/food_list.do")
	public ModelAndView food_list(@RequestParam Map<String, Object> pMap) throws Exception {
		List<Object> food_list = null;
		food_list = travelService.get_food_list(pMap);
		ModelAndView mav = new ModelAndView();
		mav.addObject("food_list", food_list);
		mav.setViewName("jsonView");
		return mav;
	}
	
	//먹거리 상세 페이지 호출
	@RequestMapping(value="/food_details.do")
	public ModelAndView food_details(@RequestParam Map<String, Object> pMap) throws Exception {
		FoodVO foodVo = null;
		List<Object> food_list = null;
		foodVo = (FoodVO)travelService.get_food_details(pMap);
		food_list = travelService.get_food_list(pMap);
		ModelAndView mav = new ModelAndView("travel/food_details");
		mav.addObject("foodVo", foodVo);
		mav.addObject("food_list", food_list);
		return mav;
	}
  	
}

