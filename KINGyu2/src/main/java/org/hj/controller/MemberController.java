
package org.hj.controller;




import javax.servlet.http.HttpSession;

import org.hj.model.LoginVO;
import org.hj.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {

	@Autowired
	LoginService ls;
	
	// 회원가입
	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public String member () {
		return "member/memberin";
	}
	// 회원가입서버
	@RequestMapping(value = "/member", method = RequestMethod.POST)					
	public String memberPost (LoginVO member) {
		System.out.println(member);
		ls.memreg(member);//LoginService 클래스의 memreg()메소드 호출.
		return "member/login";
	}
	// 로그인 페이지
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login () {
		System.out.println("aaaa");
		return "member/login";
	}
	// 로그인 서버
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost (HttpSession session, LoginVO member) {

		session.setAttribute("login", ls.login(member));//ls는 service login(member)메소드 호출
		
		if (ls.login(member)==null) {
			return "member/login";
			} else {	
				return "redirect:/index2";	
			}
	}
	@RequestMapping(value = "/index2", method = RequestMethod.GET)
	public String index () {
		System.out.println("aaaa");
		return "member/index2";
	}
	// 회원관리페이지(관리자용)
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String memgerlist(Model model) {
		model.addAttribute("memlist", ls.memlist());
		//ls.memlist();
		return "member/list";//member폴더에 list.jsp를 실행하겠다(return은 실제로 실행해야될 곳을 정의)
	}
	
	// 회원 상세 내용 페이지(관리자용)
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public String memberDetail(String id, Model model) {//return type void가 아니니 return값이 꼭 있어야한다.//model에 값 저장후 list.jsp로 뿌려줌
		model.addAttribute("detail", ls.memdetail(id));
		ls.memdetail(id);//ls는 Login Service //메소드 호출
		return "member/detail";//member폴더에 detail.jsp를 실행하겠다 //WEB-INF/view/member/detail.jsp
	}
	
	
	// 회원정보 수정 
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	//public String membermodify(String name,String password, String id, String phone) {// 이렇게 하나하나 값들을 전부 다적어주면 효율적이지 않다
	public String membermodify(LoginVO login, RedirectAttributes rttr) {// 효율적이게 이렇게 씀 LoginVO에 원하는 값이 다있다.
		ls.memberModify(login);
		rttr.addAttribute("id", login.getId());
		return "redirect:/detail";//수정 후 어떤 화면으로 갈 것인지 detail.jsp로 가겠다
	}
	//회원정보 삭제
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
		public String memberRemove(LoginVO login) {
			ls.memberRemove(login);
			return "redirect:/list";	
	}
	
}
