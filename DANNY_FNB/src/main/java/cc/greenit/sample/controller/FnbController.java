package cc.greenit.sample.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cc.greenit.sample.common.vo.SL_VO;
import cc.greenit.sample.service.FnbService;
import cc.greenit.sample.service.SampleService;

@Controller
public class FnbController {
	
//	private SampleService sampleService;
	private FnbService fnbService;
	
//	@Autowired
//	public FnbController(SampleService sampleService) {
//		this.sampleService = sampleService;
//	}
	
	@Autowired
	public FnbController(FnbService fnbService) {
		this.fnbService = fnbService;
	}
	
	
	
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		System.out.println("테스트 페이지");
		return "test";
	}
	
	
//	@ResponseBody
//	@RequestMapping(value = "/ajaxTest")
//	public List<HashMap<String, Object>> ajaxTest() {
//		
//		System.out.println("ajaxTest");
//		List<HashMap<String, Object>> result = sampleService.selectTest(null);
//
//		return result;
//	}
	
	@RequestMapping(value = "/main_test", method = RequestMethod.GET)
	public String main_test(Locale locale, Model model) {
		System.out.println("메인화면");
		return "main_test";
	}
	
	@RequestMapping(value = "/main_test2")
	public String main_test2(Locale locale, Model model) {
		System.out.println("매출등록 화면");
		return "main_test2";
	}
	
	@RequestMapping(value = "/main_test3")
	public String main_test3(Locale locale, Model model) {
		System.out.println("매출등록 화면");
		return "main_test3";
	}
	
	@RequestMapping(value = "/main_test4")
	public String main_test4(Locale locale, Model model) {
		System.out.println("매출등록 화면");
		return "main_test4";
	}
	
	@ResponseBody
	@RequestMapping(value = "/sl_table_select")
	public List<HashMap<String, Object>> sl_table_select() {
		
		System.out.println("sl_table_select 조회");
		List<HashMap<String, Object>> result = fnbService.sl_table_select(null);

		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/calculate")
	public List<HashMap<String, Object>> calculate(HashMap<String, Object> hashMap) {
		
		
		System.out.println("calculate");
		List<HashMap<String, Object>> result = fnbService.sl_table_select(null);
		List<HashMap<String, Object>> result1 =  fnbService.common_list(null);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/sales_list")
	public SL_VO sales_list(HashMap<String, Object> hashMap, SL_VO slVo) {
		
		System.out.println("sales_list");
		
		List<HashMap<String, Object>> result1 =  fnbService.sales_list(null);
		List<HashMap<String, Object>> result2 =  fnbService.common_list(null);
		
		slVo.setOb1(result1);
		slVo.setOb2(result2);
		
		
		return slVo;
	}
	
	@ResponseBody
	@RequestMapping(value = "/common_list")
	public List<HashMap<String, Object>> common_list(HashMap<String, Object> hashMap) {
		
		System.out.println("common_list");
		List<HashMap<String, Object>> result =  fnbService.common_list(null);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/saveOrder")
	public List<HashMap<String, Object>> saveOrder(@RequestParam HashMap paramMap) {
		
		System.out.println("saveOrder");
//		List<HashMap<String, Object>> result =  fnbService.sales_list(null);
		
		return fnbService.saveOrder(paramMap);
	}
	
	

}
