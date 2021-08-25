package com.site.p0819.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.p0819.mapper.MemberMapper;
import com.site.p0819.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public MemberVo selectLogin(String id, String pw) {
		
		MemberVo memberVo = memberMapper.selectLogin(id,pw);
		
		return memberVo;
	}

	

}
