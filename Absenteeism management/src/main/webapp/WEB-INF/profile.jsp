<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
   
   
  <style ><%@include file="/WEB-INF/profile.css"%>	</style>  
    <title></title>
   
</head>
<body>
  <%@include file="/WEB-INF/header.jsp"%>	
  <br>
  <br>
<div class="container">
    <div class="view-account">
        <section class="module">
            <div class="module-inner">
                <div class="side-bar">
                    <div class="user-info">
                        <img class="img-profile img-circle img-responsive center-block" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                        <ul class="meta list list-unstyled">
                            <li class="name"><c:out value="${prof.firstname }  ${prof.lastname }"></c:out>
                                
                            </li>
                         
                            
                        </ul>
                    </div>
                     <div class="up" >
                                  
                                    <button type="submit" class="btn btn-sm btn-default-alt pull-left">Update Image</button>
                                </div>
                          
                    <nav class="side-menu">
                        <ul class="nav">
                            <li class="active"><a href="#"><span class="fa fa-user"></span> Profile</a></li>
                            <li><a href="#"><span class="fa fa-cog"></span> Settings</a></li>
                         
                            
                        </ul>
                    </nav>
                </div>
                <div class="content-panel">
                    <h2 class="title">Profile</h2>
                    <form class="form-horizontal" method="post" action="UpdateStudentsServlet">
                        <fieldset class="fieldset">
                            <h3 class="fieldset-title">Personal Info</h3>
                          
                                 <div class="form-group">
                                <label class="profinf">ID</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input type="text" name="id1" class="form-control" value="${prof.id } ">
                                </div>
                            </div>
                             
                               
                            
                            <div class="form-group">
                                <label class="profinf">User Name</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input type="text" name="username1" class="form-control" value="${prof.username } ">
                                </div>
                            </div>
                            
        
                            <div class="form-group">
                                <label class="profinf">First Name</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input type="text" name="firstname1" class="form-control" value="${prof.firstname }  ">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="profinf">Last Name</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input type="text" class="form-control" name="lastname1"  value=" ${prof.lastname }">
                                     <br>
                                      <br>
                                </div>
                            </div>
                        </fieldset>
                        <br>
                         <br>
                        <fieldset class="fieldset">
                            <h3 class="fieldset-title">Contact Info</h3>
                            <div class="form-group">
                                <label class="profinf">Email</label>
                                <div class="col-md-10 col-sm-9 col-xs-12">
                                    <input type="email" class="form-control" name="email1" value=" ${prof.email }">
                                    <br>
                                     <br>
                                </div>
                            </div>
                            
                           
                        </fieldset>
                         <br>
                          <br>
                        <hr>
                        <div class="form-group">
                            <div class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
                                <input class="btn btn-primary" type="submit" value="Update Profile">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
</html>