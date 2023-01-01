<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="domain.Animal"%>
<%@page import="domain.AnimalRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@include file="dbconn.jsp" %>
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로</title>
  <meta content="" name="description">
  <meta content="" name="keywords">


  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <link href="../assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="../assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="../assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link href="../assets/css/style.css" rel="stylesheet">

  
</head>
<body>

<%@ include file = "navbar.jsp"%>
<fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">
<%
	String registerCode = request.getParameter("registerCode");	
	System.out.println("register: " + registerCode);

	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql = "select * from animal where registerCode = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, registerCode);
	rs = pstmt.executeQuery();
	
	Cookie cookie = new Cookie(registerCode + "", registerCode);
	cookie.setMaxAge(30 * 60);
	response.addCookie(cookie);
	
	if (rs.next()){
%>
    <div id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><fmt:message key="animalInfo.title" /></h2>
        </div>

        <div class="row">
        
          <div class="col-lg-5 d-flex align-items-stretch">
	        
			
            <div class="info">
	            <div>
					<img src="../assets/img/abandoned/<%= rs.getString("fileName") %>" style="width: 100%">
				</div>
				<br>
				
			  <div class="code">
                <i class="bi bi-card-heading"></i>
                <h4><fmt:message key="animalInfo.registerCode" />:</h4>
                <p><%= rs.getString("registerCode") %></p>
              </div>
              
              <div class="address">
                <a href='https://www.google.co.kr/maps/search/<%= rs.getString("shelterLocation")%>'><i class="bi bi-geo-alt"></i></a>
                <h4><fmt:message key="animalInfo.shelter" />:</h4>
                <p><%= rs.getString("shelterLocation") %></p>
              </div>
              
              <div class="condition">
                <i class="bi bi-clipboard2-pulse"></i>
                <h4><fmt:message key="animalInfo.environment" />:</h4>
                <p><%= rs.getString("environment") %></p>
              </div>

            </div>
          </div>

          <div class="col-lg-7 mt-5 mt-lg-0 d-flex align-items-stretch">
            <form action="addAdopt.jsp?registerCode=<%= rs.getString("registerCode") %>" method="post" role="form" class="register-form" enctype="multipart/form-data">
              
              <div class="row">
                <div class="form-group col-md-3">
                  <label for="name"><fmt:message key="animalInfo.name" /></label>
                  <input type="text" value='<%= rs.getString("name") %>' name="name" class="form-control" id="name" disabled>
                </div>
                
                <div class="form-group col-md-2">
                  <label for="age"><fmt:message key="animalInfo.age" /></label>
                  <input type="text" value='<%= rs.getString("age") %>' name="age" class="form-control" id="age" disabled>
                </div>
                
                <div class="form-group col-md-3 mt-3 mt-md-0">
                  <label for="type"><fmt:message key="animalInfo.type" /></label>
                  <input type="text" value='<%= rs.getString("animalType") %>' class="form-control" name="type" id="type" disabled>
                </div>
                
                <div class="form-group col-md-3 mt-3 mt-md-0">
                  <label for="breed"><fmt:message key="animalInfo.breed" /></label>
                  <input type="text" value='<%= rs.getString("breed") %>' class="form-control" name="breed" id="breed" disabled>
                </div>
              </div>
              
              <div class="row">
	              <div class="form-group col-md-2">
	                  <label for="gender"><fmt:message key="animalInfo.gender" /></label>
	                  <input type="text" value='<%= rs.getString("gender") %>' class="form-control" name="breed" id="breed" disabled>
		          </div>
		          
		          <div class="form-group col-md-6">
	              	<label for="condition"><fmt:message key="animalInfo.condition" /></label>
	                <input type="text" value='<%= rs.getString("conditionInfo") %>' class="form-control" name="detectLocation" id="detect" disabled>
	              </div>
	          </div>
              
              <div class="form-group mt-3">
                <label for="detectLocation"><fmt:message key="animalInfo.detectionLocation" /></label>
                  <input type="text" value='<%= rs.getString("detectLocation") %>' class="form-control" name="detectLocation" id="detect" disabled>
              </div>
              
              <div class="form-group mt-3">
                <label for="disease"><fmt:message key="animalInfo.disease" /></label>
                <textarea class="form-control" name="disease" rows="3" disabled><%= rs.getString("desease")%></textarea>
              </div>
              
              <div class="form-group mt-3">
                <label for="etc"><fmt:message key="animalInfo.etc" /></label>
                <textarea class="form-control" name="etc" rows="4" disabled><%= rs.getString("etc") %></textarea>
              </div>
              
              <div class="text-center"><button type="submit"><fmt:message key="animalInfo.select" /></button></div>
              
            </form>
          </div>


        </div>

      </div>
    </div>
    <%
		}
	
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
 <%@ include file="footer.jsp" %>
</body>
</html>