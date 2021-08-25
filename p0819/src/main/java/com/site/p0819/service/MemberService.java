package com.site.p0819.service;

import com.site.p0819.vo.MemberVo;

public interface MemberService {

	MemberVo selectLogin(String id, String pw);

}
