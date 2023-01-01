<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

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

  <link href="../assets/css/style.css?after2" rel="stylesheet">

</head>

<body>

<%@ include file = "navbar.jsp"%>
<fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">


  <div id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

      <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

      <div class="carousel-inner" role="listbox">

        <!-- Slide 1 -->
        <div class="carousel-item active" style="background-image: url(../assets/img/slide/cat1.png)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown"><span><fmt:message key="home.slide1.1" /></span></h2>
              <p class="animate__animated animate__fadeInUp"><fmt:message key="home.slide1.2" /></p>
            </div>
          </div>
        </div>

        <!-- Slide 2 -->
        <div class="carousel-item" style="background-image: url(../assets/img/slide/dog1.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown"><fmt:message key="home.slide2.1" /></h2>
              <p class="animate__animated animate__fadeInUp"><fmt:message key="home.slide2.2" /></p>
            </div>
          </div>
        </div>

        <!-- Slide 3 -->
        <div class="carousel-item" style="background-image: url(../assets/img/slide/dog2.jpg)">
          <div class="carousel-container">
            <div class="container">
              <h2 class="animate__animated animate__fadeInDown"><fmt:message key="home.slide3.1" /></h2>
              <p class="animate__animated animate__fadeInUp"><fmt:message key="home.slide3.2" /></p>
            </div>
          </div>
        </div>

      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
        <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
        <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
      </a>

    </div>
  </div>

  <div id="main">

    
    <div id="featured-services" class="featured-services section-bg">
      <div class="container">

        <div class="row no-gutters">
          <div class="col-lg-4 col-md-6">
            <div class="icon-box">
              <div class="icon"><i class="bi bi bi-card-checklist"></i></div>
              <h4 class="title"><fmt:message key="icon.1" /></h4>
              <p class="description"><fmt:message key="icon.description1.1" /></p>
              <p class="description"><fmt:message key="icon.description1.2" /></p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-eye"></i></div>
              <h4 class="title"><fmt:message key="icon.2" /></h4>
              <p class="description"><fmt:message key="icon.description2.1" /></p>
              <p class="description"><fmt:message key="icon.description2.2" /></p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="icon-box">
              <div class="icon"><i class="bi bi-box2-heart"></i></div>
              <h4 class="title"><fmt:message key="icon.3" /></h4>
              <p class="description"><fmt:message key="icon.description3.1" /></p>
              <p class="description"><fmt:message key="icon.description3.2" /></p>
            </div>
          </div>
        </div>

      </div>
    </div>

  </div>

</fmt:bundle>
<%@ include file="readList.jsp" %>
<%@ include file="footer.jsp" %>

</body>
</html>