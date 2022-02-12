<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style><%@include file="/WEB-INF/header2.css"%></style>
<style><%@include file="/WEB-INF/header.css"%></style>
<style><%@include file="/WEB-INF/ListStudent.css"%></style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@include file="/WEB-INF/header.jsp"%>
<br>
<br>
<br>	
<br>

  <br>	  
 <ul id="serv">
<li class="service"><a class="active" href="/Absenteeism management/src/main/webapp/WEB-INF/acueilAdmin2.jsp">Home</a></li>
  <li class="service"><a href="http://localhost:8080/Absenteeism management/AddStudentServlet">Add Student</a></li>
  <li class="service"><a href="/listUser">List of Students</a></li>

  
</ul>

	
<section class="tbl">
<div class="table_responsive">
  <table>
    <thead>
      <tr>
        <th>id</th>
        <th>Image</th>
        <th>Name</th>
        <th>Group</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>

    <tbody>
      <tr>
        <td>01</td>
        <td><img src="https://assets.codepen.io/2147066/internal/avatars/users/default.png?fit=crop&format=auto&height=100&version=1608664176&width=100" alt=""></td>
        <td>Muhibbullah Ansary</td>
        <td>+880 017xx-xxxxxx</td>
        <td>Mymensingh sadar</td>
        <td>
          <span class="action_btn">
            <a href="#">Edit</a>
            <a href="#">Remove</a>
          </span>
        </td>
      </tr>

      <tr>
        <td>02</td>
        <td><img src="https://assets.codepen.io/5554447/internal/avatars/users/default.png?fit=crop&format=auto&height=100&version=1610026897&width=100" alt=""></td>
        <td>Moshior Rahman Arif</td>
        <td>+880 017xx-xxxxxx</td>
        <td>Mymensingh Sadar</td>
        <td>
          <span class="action_btn">
            <a href="#">Edit</a>
            <a href="#">Remove</a>
          </span>
        </td>
      </tr>
      

      <tr>
        <td>03</td>
        <td><img src="https://scontent.fdac24-1.fna.fbcdn.net/v/t1.0-9/136733295_2531377467159979_834801194934572039_n.jpg?_nc_cat=106&ccb=2&_nc_sid=730e14&_nc_ohc=2-9gIMkATL0AX8068TK&_nc_ht=scontent.fdac24-1.fna&oh=06abd8efd43efbc5c7cae989dfdf9084&oe=601C3DFB" alt=""></td>
        <td>Suibe</td>
        <td>+880 017xx-xxxxxx</td>
        <td>Mymensingh Sadar</td>
        <td>
          <span class="action_btn">
            <a href="#">Edit</a>
            <a href="#">Remove</a>
          </span>
        </td>
      </tr>
      
    </tbody>
  </table>
 
</div>
 </section>
</body>
</html>