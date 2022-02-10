<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="bootstrap1Team_main.ksmart.dto.Subject" %>
<%
	ArrayList<Subject> wishList = new ArrayList<Subject>();	
	Subject subject = null;
	for(int i=1; i<6; i++){		
		subject =new Subject();
		subject.setSubjectName("강의명"+i);
		subject.setTeacherName("강사명"+i);
		subject.setSubjectPrice(i*1000);
		wishList.add(subject);
	}	 
	Gson gson = new Gson();
	String json = gson.toJson(wishList);
	
	out.println(json);	
%>