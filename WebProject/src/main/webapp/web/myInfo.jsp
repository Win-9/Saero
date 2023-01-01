<%@page import="domain.Animal"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<link href="../assets/vendor/animate.css/animate.min.css"
	rel="stylesheet">
<link href="../assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="../assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="../assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<link href="../assets/css/style.css?afer1" rel="stylesheet">

</head>
<body>
	<%@ include file="navbar.jsp"%>
	<fmt:setLocale value='<%= request.getParameter("language") %>'  />
	<fmt:bundle basename="bundle.message">
		<div id="hero">
			<div id="heroCarousel" data-bs-interval="5000"
				class="carousel slide carousel-fade" data-bs-ride="carousel">

				<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

				<div class="carousel-inner" role="listbox">

					<!-- Slide 1 -->
					<div class="carousel-item active"
						style="background-image: url(../assets/img/slide/cat2.jpg)">
						<div class="carousel-container">
							<div class="container">
								<h2 class="animate__animated animate__fadeInDown">
									<span><fmt:message key="myInfo.title" /></span>
								</h2>
								<p class="animate__animated animate__fadeInUp">
									<fmt:message key="myInfo.subtitle" />
								</p>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>

		<div id="contact" class="contact" style="margin: 5%;">
			<div class="container">

				<div class="section-title">
					<h2><fmt:message key="myInfo.language" /></h2>
				</div>
				
				<div id="selLang" class="selLang">
					<div class="container">

						<div class="row no-gutters" style="margin-left: 20%;">

							<div class="col-lg-7 col-md-6 content-item">
								<span>01</span>
								<h4>한국어</h4>
								<p>한국어로 변경합니다.&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <a class="getstarted scrollto" href="?language=ko">변경</a></p>
							</div>

							<div class="col-lg-7 col-md-6 content-item">
								<span>02</span>
								<h4>English</h4>
								<p>Change to English &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp <a class="getstarted scrollto" href="?language=en">Change</a></p>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
		
		<div id="cart" class="cart">
      <div class="container">

        <div class="section-title">

          <h2><fmt:message key="myInfo.list" /></h2>
          <p><fmt:message key="myInfo.sublist" /></p>
        </div>

        <div class="row cart-container">
        <%
	        ArrayList<Animal> cartList = (ArrayList<Animal>) session.getAttribute("selectList");
			if (cartList == null){
				cartList = new ArrayList<>();
			}
			System.out.println("cartSize: " + cartList.size());
			for(int i = 0; i < cartList.size(); i++){
				Animal animal = cartList.get(i);
        %>
          <div class="col-lg-4 col-md-6 cart-item filter-app">
            <div class="cart-wrap">
              <img src="../assets/img/abandoned/<%= animal.getFileName() %>" class="img-fluid" alt="">
              <div class="cart-info">
                <h4><%= animal.getName() %></h4>
                <div class="cart-links">
                  <a href="animalInfo.jsp?registerCode=<%= animal.getRegisterCode() %>&language=<%= request.getParameter("language") %>'" title="More Details"><i class="bx bx-link"></i></a>
                  <a href="deleteAdopt.jsp?registerCode=<%= animal.getRegisterCode() %>&language=<%= request.getParameter("language") %>'" title="More Details"><i class="bi bi-trash"></i></a>
                </div>
              </div>
            </div>
          </div>
          <%
        	}
          %>

        </div>

      </div>
    </div>
	</fmt:bundle>
	<%@ include file="footer.jsp" %>
</body>
</html>
