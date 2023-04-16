package org.hj.service;

import java.util.ArrayList;

import org.hj.model.LoginVO;

public interface LoginService {
	
	public void memreg(LoginVO member);
	public LoginVO login(LoginVO member);
	public ArrayList<LoginVO> memlist();//설계
	
	//void=>LoginVO 바꿔줌
	//MemberController.java에서 memdetail()를 사용하기 위해 선언해줘야함(메소드 선언)
	public LoginVO memdetail(String id); //LoginServiceImpl.java로 구현하러 가야한다 
	
	//두번째 방법 public void memdetail(LoginVO login);
	
	public void memberModify(LoginVO login);
	
	public void memberRemove(LoginVO login);
	
	
}







