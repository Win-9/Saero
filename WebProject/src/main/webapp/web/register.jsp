<%@page import="domain.AnimalRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page errorPage="errorPage.jsp" %>

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
  

  <link href="../assets/css/style.css?after7" rel="stylesheet">
</head>
<body>


  <%@ include file = "navbar.jsp"%>
  <fmt:setLocale value='<%= request.getParameter("language") %>'  />
 <fmt:bundle basename="bundle.message">


    <div id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><fmt:message key="register.title" /></h2>
          <p><fmt:message key="register.description" /></p>
        </div>

        <div class="container">

          <div class ="col-lg-7 mt-5 mt-lg-0 register-layout d-flex align-items-stretch align-self-start">
            <form name="addForm" action="registerProcess.jsp" method="post" role="form" class="register-form" enctype="multipart/form-data">
              <div class="row">
                <div class="form-group col-md-3">
                  <label for="name"><fmt:message key="register.name" /></label>
                  <input type="text" name="name" class="form-control" id="name">
                </div>
                
                <div class="form-group col-md-2">
                  <label for="age"><fmt:message key="register.age" /></label>
                  <input type="text" name="age" class="form-control" id="age">
                </div>
                
                <div class="form-group col-md-3 mt-3 mt-md-0">
                  <label for="animalType"><fmt:message key="register.type" /></label>
                  <input type="text" class="form-control" name="animalType" id="animalType">
                </div>
                
                <div class="form-group col-md-3 mt-3 mt-md-0">
                  <label for="breed"><fmt:message key="register.breed" /></label>
                  <input type="text" class="form-control" name="breed" id="breed">
                </div>
              </div>
              
              <div class="row">
	              <div class="form-group col-md-2">
	                  <label for="gender"><fmt:message key="register.gender" /></label>
						<select name="gender" class="form-control">
		              		<option selected="selected" ><fmt:message key="register.gender.male" /></option>
		              		<option><fmt:message key="register.gender.female" /></option>
		              	</select>
		          </div>
		          <div class="form-group col-md-3">
	                  <label for="fileName"><fmt:message key="register.picture" /></label>
					  <input type="file" name="fileName" id="fileName">
		          </div>
	          </div>
              
              <div class="form-group mt-3">
                <label for="shelterLocation"><fmt:message key="register.shelter" /></label>
                  <input type="text" class="form-control" name="shelterLocation" id="shelterLocation">
              </div>
              
              <div class="form-group mt-3">
                <label for="detectLocation"><fmt:message key="register.detectionLocation" /></label>
                  <input type="text" class="form-control" name="detectLocation" id="detectLocation">
              </div>
              
              <div class="row">
	              <div class="form-group col-md-6">
	              	<label for="environment"><fmt:message key="register.environment" /></label>
	              
	              	<select name="environment" class="form-control">
	              		<option selected="selected" ><fmt:message key="register.environment.care" /></option>
	              		<option><fmt:message key="register.environment.adopt" /></option>
	              		<option><fmt:message key="register.environment.heal" /></option>
	              		<option><fmt:message key="register.environment.rescue" /></option>
	              	</select>
	              </div>
	              
	              <div class="form-group col-md-6">
	              	<label for="condition"><fmt:message key="register.condition" /></label>
	              
	              	<select name="condition" class="form-control">
	              		<option selected="selected" ><fmt:message key="register.condition.good" /></option>
	              		<option><fmt:message key="register.condition.bad" /></option>
	              		<option><fmt:message key="register.condition.healing" /></option>
	              		<option><fmt:message key="register.condition.verybad" /></option>
	              	</select>
	              </div>
              </div>
              
              
              <div class="form-group mt-3">
                <label for="disease"><fmt:message key="register.disease" /></label>
                <textarea class="form-control" name="disease" rows="3"></textarea>
              </div>
              
              <div class="form-group mt-3">
                <label for="etc"><fmt:message key="register.etc" /></label>
                <textarea class="form-control" name="etc" rows="4"></textarea>
              </div>
              
              <div class="text-center"><button type="button" onclick="CheckValid()"><fmt:message key="register.regist" /></button></div>
            </form>
          </div>

        </div>

      </div>
    </div>
</fmt:bundle>
<%@ include file="footer.jsp" %>
    
</body>
</html>