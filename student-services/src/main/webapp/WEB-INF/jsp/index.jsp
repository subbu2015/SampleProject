<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
   <head>
      <meta charset="UTF-8" />
      <title>Welcome</title>
  <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/favicon.ico" />    
  <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">
   </head>
   <body>
      <h1>Welcome</h1>
      <h2>${message}</h2>
        </br>
      <a href="${pageContext.request.contextPath}/studentList">Student List</a>  
      
   </body>
  
</html>