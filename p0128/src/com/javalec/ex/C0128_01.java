package com.javalec.ex;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class C0128_01  {
	
	void fileSave(HttpServletRequest request,HttpServletResponse response) throws Exception {
		File d1 = new File("c:/servlet");   //c:/aaa/servlet
		File f1 = new File("c:/servlet/log.txt");
		
		if(d1.exists()==false) {
			d1.mkdirs();
		}
		if(f1.exists()==false) {
			f1.createNewFile();
		}
		
		FileWriter fw = new FileWriter("c:/servlet/log.txt",true);
		String id = request.getParameter("id");
		System.out.println(id);
		String name = request.getParameter("name");
		System.out.println(name);
		String content = id+" "+name+"\r\n";
		fw.write(content);
		fw.flush();
		fw.close();
		System.out.println("저장완료");
		
	}

}
