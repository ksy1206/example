package cmd.controller;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cmd.service.MainService;

@Controller("Sample")
@RequestMapping(value="/sample")
public class SampleController
{
   private final static Log logger = LogFactory.getLog(SampleController.class);
   
   @Resource(name="mainService")
   private MainService mainService;
   
	//메인 페이지 호출
 	@RequestMapping(value="/angularJs.do")
 	public ModelAndView angularJs() throws Exception {
 		ModelAndView mav = new ModelAndView("sample/angularJs");
 		return mav;
 	}
   
	//메인 페이지 호출
	@RequestMapping(value="/sample_main.do")
	public ModelAndView main() throws Exception {
		ModelAndView mav = new ModelAndView("sample/main");
		return mav;
	}
	
	//ajax 페이지
	@RequestMapping(value="/sample_ajax.do")
	public ModelAndView sample_ajax() throws Exception {
		
		ModelAndView mav = new ModelAndView("sample/jQueryAjax");
		return mav;
	}

  	
}

