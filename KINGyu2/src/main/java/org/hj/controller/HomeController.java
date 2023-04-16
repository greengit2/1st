/*HomeController.jsp*/
package org.hj.controller;


import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	//해당 메소드가 처리할 요청 URL과HTTP요청메소드를 지정한다
	@RequestMapping(value = "/", method = RequestMethod.GET)
	
	//Model객체는 view에전달할 데이터를 담는데 사용.
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
	public String home(Locale locale, Model model) {
		return "home"; // /WEB-INF/views/home.jsp(이렇게 동작)=>포워드방식으로 처리
	}
	
	@RequestMapping(value = "/drop", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
		public String drop() {
			return "drop";
		}
		
	
	
}
