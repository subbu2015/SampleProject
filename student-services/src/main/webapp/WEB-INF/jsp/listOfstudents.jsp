<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Person List</title>
  <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/favicon.ico" />    
  <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">
  </head>
  <body>
  <h1>Person List</h1>
  <br/><br/>
  <div>
      <table border="20">
        <tr>
        <th>Student Id</th>
          <th>First Name</th>
          <th>Last Name</th>
        </tr>
        <c:forEach  items="${studentslist}" var ="student">
        <tr>
          <td>${student.id}</td>
          <td>${student.firstName}</td>
          <td>${student.lastName}</td>
        </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>