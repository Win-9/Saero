<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="domain.Animal"%>
<%@page import="domain.AnimalRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link href="../assets/css/style.css?after5" rel="stylesheet">
</head>
<body>
<fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">
<section id="clients" class="clients">
      <div class="container">

        <div class="section-title">
          <h2><fmt:message key="readList.title" /></h2>
        </div>
        <div class="clients-slider swiper">
          <div class="swiper-wrapper align-items-center">
          <%@ include file="dbconn.jsp" %>
          	<%
	    		Cookie[] cookies = request.getCookies();
          	
	          	PreparedStatement pstmt = null;
	        	ResultSet rs = null;
	        	String sql = "select * from animal where registerCode = ?";
	        	pstmt = conn.prepareStatement(sql);
	        	
	        	for(int i = 0; i < cookies.length; i++){
	        		String key = cookies[i].getValue();
	        		

	        		pstmt.setString(1, key);
	        		rs = pstmt.executeQuery();
	        		while(rs.next()){

	        	
        	%>
            <div class="swiper-slide"><img src =" ../assets/img/abandoned/<%= rs.getString("fileName") %>" class="img-fluid" alt=""></div>
            <%
        		}
	        	}
            %>
          </div>
        </div>

      </div>
    </section>
    <%
		if (rs != null){
			rs.close();
		}
		
		if (pstmt != null) {
			pstmt.close();
		}
		
		if (conn != null) {
			conn.close();
		}
    %>
</fmt:bundle>
</body>
</html>