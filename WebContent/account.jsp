<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="kr.or.ksmart.dto.Subject"%>
<%
	String[] checks = request.getParameterValues("checkArray[]");
	String str = "";
	for(int i=0; i<checks.length; i++){
		str += checks[i];
	}
%>

<div class="col-lg-7 col-12 offset-lg-1">
	<div class="details-content">
		<%= str%>
	</div>
</div>
<aside class="col-lg-3 col-12">
	<div class="event-sidebar">
		<div class="single-widget">
			<div class="single-sidget-content">
				
			</div>
		</div>
	</div>
</aside>