<%@page import="com.sun.org.apache.bcel.internal.generic.NEW"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	JSONObject json = new JSONObject();
	json.put("id", "root");
	json.put("pw", "1234");
	json.put("tel", "011");
	out.print(json.toJSONString()); // {id:root, pw:1234, tel:011}
%>