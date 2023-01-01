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

  <link href="../assets/css/style.css?after1" rel="stylesheet">
</head>
<body>
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
								<span><fmt:message key="login.title" /></span>
							</h2>
							<p class="animate__animated animate__fadeInUp"><fmt:message key="login.subtitle" /></p>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	
	<div id="contact" class="contact">
      <div class="container">

        <div class="container" style="margin:2%;">

          <div class="col-lg-5 mt-3 mt-lg-0 login-form d-flex align-items-stretch align-self-start">
            <form action="j_security_check" method="post" role="form" class="register-form">
                <%
					String error = request.getParameter("error");
					if (error != null){
						out.println("<div class='alert alert-danger'>");
						out.println("아이디와 비밀번호를 확인해주세요.");
						out.println("</div>");
					}
				%>

                <div class="row">
	                <div class="form-group col-md-4">
	                  <label for="name"><fmt:message key="login.id" /></label>
	                </div>
	                
	                <div class="form-group col-md-7">
	                  <input type="text" name="j_username" class="form-control" required>
	                </div>
                </div>
                
                
                <div class="row">
	                <div class="form-group col-md-4">
	                  <label for="name"><fmt:message key="login.pw" /></label>
	                </div>
	                
	                <div class="form-group col-md-7">
	                  <input type="password" name="j_password" class="form-control" required>
	                </div>
                </div>
                          
                <br>
              	<div class="text-center"><button type="submit"><fmt:message key="login.submit" /></button></div>         
            </form>
          </div>

        </div>

      </div>
    </div>
</fmt:bundle>

	<%@ include file="footer.jsp"%>
</body>
</html>