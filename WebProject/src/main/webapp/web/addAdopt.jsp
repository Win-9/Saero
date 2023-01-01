<%@page import="java.util.List"%>
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
		response.sendRedirect("abandoned.jsp");
		return;
	}

	
	AnimalRepository dao = AnimalRepository.getInstance();
	
	Animal animal = dao.findById(id);

	if (animal == null){
		response.sendRedirect("exceptionNoProductId.jsp");
		return;
	}
	
	List<Animal> selectsList = dao.getAnimalList();
	Animal selects = new Animal();
	for(int i = 0; i < selectsList.size(); i++){
		selects = selectsList.get(i);
		if (selects.getRegisterCode().equals(id)){
			break;
		}
	}
	
	
	ArrayList<Animal> list = (ArrayList<Animal>) session.getAttribute("selectList");
	if (list == null){
		list = new ArrayList();
		session.setAttribute("selectList", list);
	}
	
	list.add(selects);
	
	response.sendRedirect("abandoned.jsp");		
%>
</body>
</html>