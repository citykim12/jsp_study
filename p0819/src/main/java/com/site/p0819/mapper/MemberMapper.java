package com.site.p0819.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.site.p0819.vo.MemberVo;

@Mapper
public interface MemberMapper {

	MemberVo selectLogin(String id, String pw);

}
