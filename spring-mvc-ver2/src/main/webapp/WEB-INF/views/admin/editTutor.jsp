<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">

  <form:form  action="editTutor" method="post" modelAttribute="editedTutor">
  <h3 name ="id">Editting ${editedTutor.id} <form:hidden path="id"/></h3>
 
   <div class="form-group">
      <label >Name:</label>
      <td> <form:input path="tutorName" type="text" class="form-control" id="urs" required="required" placeholder="Enter email" name="name"/>
    </div>
    
      <div class="form-group">
      <label >Address:</label>
     <td> <form:input path="address" type="text" class="form-control" id="urs" placeholder="Enter Address" name="address"/>
    </div>
    
          <div class="form-group">
      <label >Gender:</label>
     <td> <form:input path="gender" type="text" class="form-control" id="urs" placeholder="Enter Phone" name="address"/>
    </div>
    
          <div class="form-group">
      <label >Phone number:</label>
     <td> <form:input path="phonenumber" type="text" class="form-control" id="urs" placeholder="Enter Address" name="address"/>
    </div>
    
        <div class="form-group">
      <label >Credential:</label>
      <form:input path="credential" type="text" class="form-control" id="urs" placeholder="Enter Credential" name="credential"/>
    </div>
    
        <div class="form-group">
      <label >Experience Year:</label>
      <form:input path="experienceYear" type="number" class="form-control" id="urs" placeholder="Enter Experience Year" name="experience"/>
    </div>
  
  <form:hidden path="fk_Account"/>
    <button type="submit" class="btn btn-default">Submit</button>
  </form:form>
</div>
</body>
</html>