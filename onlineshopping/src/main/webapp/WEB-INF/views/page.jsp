<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

    <title>Online Shopping - ${title} </title>
    
    <script>
        windows.menu='${title}'
        window.contextRoot = '${contextRoot}'
    </script>
    

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="${css}/myapp.css" rel="stylesheet">

</head>

<body>

   <div class="wrapper">

<!-- Navigation -->
 <%@include file="./shared/navbar.jsp" %>


<div class="content">
<!-- Page Content -->
   <!-- Load only when user home content -->
   <c:if test="${userClickHome == true }">
    	<%@include file="home.jsp" %>
   </c:if> 
   
   <!-- Load only when user clicks about -->
   <c:if test="${userClickAbout == true }">
    	<%@include file="about.jsp" %>
   </c:if>
   
    <!-- Load only when user clicks contactt -->
   <c:if test="${userClickContact == true }">
    	<%@include file="contact.jsp" %>
   </c:if>
   </div>
   
   
   <!-- Load only when user clicks view products -->
   <c:if test="${userClickAllProducts == true or userClickCategoryProducts == true}">
    	<%@include file="listProduct.jsp" %>
   </c:if>
   </div>
   
   
   
    <!-- Footer -->

    <%@include file="./shared/footer.jsp" %>

    <!-- JavaScript -->
    <script src="${js}/jquery-1.10.2.js"></script>
    <script src="${js}/bootstrap.js"></script>
    
    <!--  Self coded javascript -->
    <script src="${js}/myapp.js"></script>

   
  </div>
</body>

</html>
























