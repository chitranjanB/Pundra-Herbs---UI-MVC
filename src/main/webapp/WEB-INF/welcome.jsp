<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org" xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
 <head>
 <title>Welcome Security with Spring Boot!</title>
 </head>
 <body>
     <h1 style="color:blue"> Hello! This is Welcome Page!</h1>
     <form action="/logout" method="post">
         <input type="submit" value="Sign Out"/>
     </form>
     
     <%@ include file="footer.jsp"%> 
 </body>
</html>