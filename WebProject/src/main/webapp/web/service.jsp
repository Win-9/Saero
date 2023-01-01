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

  <link href="../assets/css/style.css?after2" rel="stylesheet">
</head>
<body>

  <%@ include file = "navbar.jsp"%>
  <fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">

    <div id="about" class="about">
      <div class="container service" style="margin: 5%;">

        <div class="section-title">
          <h2><fmt:message key="service.title" /></h2>
          <p><fmt:message key="service.subTitle" /></p>
        </div>

        <div class="row">
          <div class="col-lg-6 order-1 order-lg-2">
            <img src="../assets/img/abandoned2.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
            <h3><fmt:message key="service.p1" /></h3>
            <br>
            <p class="fst-italic">
              <fmt:message key="service.p2" />
            </p>
            
            <p>
				<fmt:message key="service.p3" />
			</p>
			
			<p>
                <fmt:message key="service.p4" />
            </p>
            
            <p>
              	<fmt:message key="service.p5" />
            </p>

            <p>
              	<fmt:message key="service.p6" />
            </p>
              
            <p>
              	<fmt:message key="service.p7" />
            </p>
          </div>
        </div>

      </div>
</div>
</fmt:bundle>
<%@ include file="footer.jsp" %>
    
</body>
</html>