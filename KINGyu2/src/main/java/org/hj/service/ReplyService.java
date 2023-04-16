package org.hj.service;

import org.hj.model.CriteriaVO;
import org.hj.model.ReplyPageVO;
import org.hj.model.ReplyVO;

public interface ReplyService {
	public int rewrite(ReplyVO reply);
	
	public ReplyPageVO list(CriteriaVO cri, int bno);
	
	public int modify(ReplyVO reply);
	
	public int remove(ReplyVO reply);
}
