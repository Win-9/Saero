<%@page import="java.sql.PreparedStatement"%>
<%@page import="domain.AnimalRepository"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="type.GenderType"%>
<%@page import="domain.Animal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconn.jsp" %>
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("utf-8");
	
	String fileName = "";
	String realFolder = "C:\\Users\\Win9\\OneDrive - kyonggi.ac.kr\\학교\\3학년2학기\\지능웹설계\\project\\WebProject\\src\\main\\webapp\\assets\\img\\abandoned";
	int maxSize = 5 * 1024 * 1024;
	String encType = "UTF-8";
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

	Animal animal = new Animal();
	AnimalRepository repository = AnimalRepository.getInstance();
	
	String registerCode = repository.generateRandomCode();
	String name = multi.getParameter("name");
	Integer age = Integer.parseInt(multi.getParameter("age"));
	String breed= multi.getParameter("breed");
	String animalType = multi.getParameter("animalType");
	String gender = multi.getParameter("gender");
	String shelterLocation = multi.getParameter("shelterLocation");
	String detectLocation = multi.getParameter("detectLocation");
	String environment = multi.getParameter("environment");
	String condition = multi.getParameter("condition");
	String disease = multi.getParameter("disease");
	String etc = multi.getParameter("etc");
	
	Enumeration files = multi.getFileNames();
	String fname = (String)files.nextElement();
	fileName = multi.getFilesystemName(fname);
	
	animal.setRandomRegisterCode(registerCode);
	animal.setName(name);
	animal.setAge(age);
	animal.setBreed(breed);
	animal.setType(animalType);
	animal.setGender(gender);
	animal.setShelterLocation(shelterLocation);
	animal.setDetectLocation(detectLocation);
	animal.setEnvironment(environment);
	animal.setCondition(condition);
	animal.setFileName(fileName);
	animal.setDisease(disease);
	animal.setEtc(etc);
	
	repository.addAnimal(animal);
	
	
	PreparedStatement pstmt = null;
	String sql = "insert into animal values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, registerCode);
	pstmt.setString(2, name);
	pstmt.setInt(3, age);
	pstmt.setString(4, breed);
	pstmt.setString(5, animalType);
	pstmt.setString(6, gender);
	pstmt.setString(7, fileName);
	pstmt.setString(8, shelterLocation);
	pstmt.setString(9, detectLocation);
	pstmt.setString(10, environment);
	pstmt.setString(11, condition);
	pstmt.setString(12, disease);
	pstmt.setString(13, etc);
	pstmt.executeUpdate();
	
	if (pstmt != null){
		pstmt.close();
	}
	
	if (conn != null){
		conn.close();
	}
	
	response.sendRedirect("abandoned.jsp");
%>
</body>
</html>