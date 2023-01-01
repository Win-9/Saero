<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="domain.AnimalRepository"%>
<%@page import="domain.Animal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page errorPage="errorPage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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

  <link href="../assets/css/style.css?after7" rel="stylesheet">
  
</head>
<body>

<%@ include file = 'navbar.jsp'%>
<fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">
<%--
<%
	List<Animal> list = AnimalRepository.getInstance().getAnimalList();
	list.remove(list.size() - 1);
%>
--%>

    <div id="animal" class="animal section-bg">
    
      <div class="container">
        <div class="section-title">
          <h2><fmt:message key="abandoned.title" /></h2>
          <p><fmt:message key="abandoned.description" /></p>
        </div>

        <div class="row">
        	<%@ include file="dbconn.jsp" %>
        	<%
        		PreparedStatement pstmt = null;
        		ResultSet rs = null;
        		String sql = "select * from animal";
        		pstmt = conn.prepareStatement(sql);
        		rs = pstmt.executeQuery();
        		while(rs.next()){
        	%>
	          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
	            <div class="member">
	              <a href='./animalInfo.jsp?registerCode=<%= rs.getString("registerCode")%>&language=<%= request.getParameter("language") %>'><img src="../assets/img/abandoned/<%= rs.getString("fileName") %>" alt=""></a>
	              <h4>[<%= rs.getString("animalType") %>] <%= rs.getString("name") %></h4>
	              <span><fmt:message key="abandoned.breed" />: <%= rs.getString("breed") %></span>
	              <span><fmt:message key="abandoned.gender" />: <%= rs.getString("gender") %></span>
	              <div class="social">
	                <fmt:message key="abandoned.shelter" />: <%= rs.getString("detectLocation") %>
	              </div>
	            </div>
	          </div>
	        <%
        		}
	        %>

        </div>

      </div>
    </div>
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
<%@ include file="readList.jsp" %>
<%@ include file="footer.jsp" %>
    
</body>
</html>