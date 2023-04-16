package org.hj.service;

import java.util.ArrayList;

import org.hj.mapper.LoginMapper;
import org.hj.model.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {
	
	@Autowired
	LoginMapper lm;
	
	public void memreg(LoginVO member) {
		lm.memreg(member);
	}
	
	public LoginVO login (LoginVO member) {
		System.out.println("service="+member);
		System.out.println("service return="+lm.login(member));
		return lm.login(member);
	}
	
	public ArrayList<LoginVO> memlist() {//구현부//설계는 Loginservice.java에
		return lm.memlist();
	}
	
	//void=>LoginVO 바꿔줌
	public LoginVO memdetail(String id) {//LoginService.java에서 선언(설계)한 것을 구현
		return lm.memdetail(id);//사용하기 위해 LoginMapper.java에 선언 해줘야 한다.
		
	}
	
	public void memberModify(LoginVO login) {
		lm.memberModify(login);
	}
	
	public void memberRemove(LoginVO login) {
		lm.memberRemove(login);
	}
	
	
	
	
	
	
	
	
	
	
	
}
