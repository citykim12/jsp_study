package com.site.p0819.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemberVo {
	
	private String id;
	private String pw;
	private String name;
	private String nickname;
	private String gender;
	private String tel;
	private String address1;
	private String address2;
	private String hobby;
	

}
