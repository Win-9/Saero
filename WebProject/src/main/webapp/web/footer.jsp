<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<fmt:setLocale value='<%= request.getParameter("language") %>'  />
 <fmt:bundle basename="bundle.message">

    <footer id="cta" class="cta">
      <div class="container">

       <div class="col-lg-9 text-center text-lg-start">
            <h3><fmt:message key="footer.title" /></h3>
            <p> <fmt:message key="footer.description" /></p>
        </div>
        <div class="copyright">
        &copy; Copyright <strong><span>Win9</span></strong>
      </div>

      </div>
    </footer>
</fmt:bundle>

  <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="../assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../assets/vendor/swiper/swiper-bundle.min.js"></script>

  <script src="../assets/js/main.js?after1"></script>
  <script type="text/javascript" src="../assets/js/validation.js"></script>
  