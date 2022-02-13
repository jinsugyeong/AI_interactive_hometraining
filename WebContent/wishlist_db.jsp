<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="kr.or.ksmart.dto.Subject" %>
<%@ page import="com.google.gson.Gson" %>
<%
	String userId = request.getParameter("loginId");

	List<Subject> wishList = new ArrayList<Subject>();	
	
	Subject subject = null;
	for(int i=1; i<6; i++){		
		subject =new Subject();
		subject.setSubjectName("강의명"+i);
		subject.setTeacherName("강사명"+i);
		subject.setSubjectPrice(i*5000);
		wishList.add(subject);
	}
	
	Map<String, List<Subject>> userWishmap = new HashMap<String, List<Subject>>();
	userWishmap.put("jinsugyeong", wishList);
	
	Gson gson = new Gson();
	String json = "";
	
	if(userWishmap.containsKey(userId)){
		json = gson.toJson(userWishmap.get(userId));
	}
	out.println(json);	
%>