package com.javalec.ex;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.GregorianCalendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Test01")
public class Test01 extends HttpServlet {
	 private PrintWriter logFile;
	 FileWriter fw=null;
	    @Override
	    public void init() throws ServletException {
	    	System.out.println("init()");
	    	File d1 = new File("c:/servlet");   //c:/aaa/servlet
			File f1 = new File("c:/servlet/log.txt");
			if(d1.exists()==false) {
				d1.mkdirs();
			}
			if(f1.exists()==false) {
				try {
					f1.createNewFile();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			
			try {
				fw = new FileWriter("c:/servlet/log.txt",true);
			} catch (IOException e) {
				e.printStackTrace();
			}
	    }

	    public void destroy(){
	    	System.out.println("destroy()");
	        if(fw != null)
				try {
					fw.close();
				} catch (IOException e) {
					e.printStackTrace();
				}//파일을 닫습니다.
	    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet");
        String id = request.getParameter("id");
		System.out.println(id);
		String name = request.getParameter("name");
		System.out.println(name);
		String content = id+" "+name+"\r\n";
        String greeting = "안녕하세요, " + name + "님.";

        if(fw != null){
        	fw.write(content);
    		fw.flush();//파일에 쓰기
    		System.out.println(content);
        }

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.println("<HTML>");
        out.println("<HEAD><TITLE>인사하기</TITLE></HEAD>");
        out.println("<BODY>");
        out.println(greeting);//안녕하세요 누구님 값 띄우기
        out.println("</BODY>");
        out.println("</HTML>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
	}

}
