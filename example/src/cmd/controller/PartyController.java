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

import cmd.service.PartyService;
import cmd.vo.PartyVO;




@Controller("party")
@RequestMapping("/party")
public class PartyController
{
   private final static Log logger = LogFactory.getLog(PartyController.class);
   
   @Resource(name = "partyService")
   private PartyService partyService;
   
   //축제 메인 페이지 호출
   @RequestMapping(value="/main.do")
   public ModelAndView main() throws Exception {
	   ModelAndView mav = new ModelAndView("party/main");
	   return mav;
   }
	
   //축제 리스트 페이지 호출
   @RequestMapping(value="/move_list.do")
   public ModelAndView move_list(@RequestParam Map<String, Object> pMap) throws Exception {	   
	   String check_value = (String) pMap.get("check_value");
	   String search[] = check_value.split(",");
	   
	   for(int i=0; i<search.length; i++){
		   pMap.put("search_0"+i, search[i]);
	   }
	   
	   List<Object> list = null;
	   list = partyService.qet_party_list(pMap);
	   
	   ModelAndView mav = new ModelAndView("party/party_list");
	   mav.addObject("title", pMap.get("check_value"));
	   mav.addObject("list", list);
	   return mav;
   }
	
	//축제 상세보기 페이지 호출
   @RequestMapping(value="/party_details.do")
   public ModelAndView party_details(@RequestParam Map<String, Object> pMap) throws Exception {
	   PartyVO partyVo = null;
	   partyVo = (PartyVO) partyService.get_party_no(pMap);
	   ModelAndView mav = new ModelAndView("party/party_details");
	   mav.addObject("partyVo", partyVo);
	   return mav;
   }

  	
}

