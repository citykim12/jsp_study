package com.javalec.ex;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberSelectAllService implements Service {

	@Override
	public ArrayList<Member3Dto> execute(HttpServletRequest request, HttpServletResponse response) {
		
		Member3Dao dao = new Member3Dao();
		ArrayList<Member3Dto> list = dao.memberSelectAll();
		
		return list;
	}

}
