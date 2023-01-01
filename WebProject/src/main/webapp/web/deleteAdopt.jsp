<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="domain.Animal"%>
<%@page import="domain.AnimalRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("registerCode");
	if (id == null || id.trim().equals("")){
		response.sendRedirect("myInfo.jsp");
		return;
	}
	
	AnimalRepository dao = AnimalRepository.getInstance();

	Animal product = dao.findById(id);
	if(product == null){
		response.sendRedirect("exceptionNoBookId.jsp");	
	}

	ArrayList<Animal> cartList = (ArrayList<Animal>)session.getAttribute("selectList");
	Animal goodsQnt = new Animal();
	for(int i=0; i<cartList.size(); i++){
		goodsQnt = cartList.get(i);
		if(goodsQnt.getRegisterCode().equals(id)){
			cartList.remove(goodsQnt);
		}
	}
	
	response.sendRedirect("myInfo.jsp");
%>
</body>
</html>