package org.hj.mapper;

import java.util.ArrayList;

import org.hj.model.LoginVO;

public interface LoginMapper {//설계역할이지 구현역할은 아님

	public void memreg(LoginVO member);
	public LoginVO login(LoginVO member);
	public ArrayList<LoginVO> memlist();//LoginVO타입을 배열에 저장
	public LoginVO memdetail(String id);//void를 LoginVO로 싹다바꿔줌 =>리턴하기 위해
	//두번째방법 public LoginVO memdetail(LoginVO login);
	
	public void memberModify(LoginVO login);
	public void memberRemove(LoginVO login);
	
}
