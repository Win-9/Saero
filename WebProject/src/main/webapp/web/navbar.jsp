<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value='<%= request.getParameter("language") %>'  />
<fmt:bundle basename="bundle.message">

<header id="header" class="d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="index.html"><fmt:message key="nav.name" /></a></h1>
      
      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="index.jsp?language=<%= request.getParameter("language") %>"><fmt:message key="nav.home" /></a></li>
          <li><a class="nav-link scrollto" href="service.jsp?language=<%= request.getParameter("language") %>"><fmt:message key="nav.service" /></a></li>
          <li><a class="nav-link scrollto" href="register.jsp?language=<%= request.getParameter("language") %>"><fmt:message key="nav.register" /></a></li>
          <li><a class="nav-link scrollto" href="abandoned.jsp?language=<%= request.getParameter("language") %>"><fmt:message key="nav.adopt" /></a></li>
          <li><a class="nav-link scrollto" href="myInfo.jsp?language=<%= request.getParameter("language") %>"><fmt:message key="nav.myInfo" /></a></li>
          <li><a class="nav-link scrollto" href="logout.jsp"><fmt:message key="nav.logout" /></a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav>

    </div>
</header>
</fmt:bundle>