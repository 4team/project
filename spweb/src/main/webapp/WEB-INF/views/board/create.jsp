<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../include/header.jsp" %>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        
        <form method="post">
        	<div style= "size:60px">
        		<label>Title</label>
        	 	<input type="text" name="title"  class="form-control" >
        	</div>
        	<div class="box-body">
        		<label>Writer</label>
        		<input type="text" name="writer"  class="form-control" >	
        	</div>
        	<div class="box-body">
        		<label>Content</label>
        		<textarea rows="15" cols="60"  name="writer" class="form-control" ></textarea>
        	</div>    
        	
        	<input type="submit" value="저장">
        	
        	           
        </form>
        
        <form action ="/board/list" >
        <input type="submit" value="취소">  
        </form>        
      </div>
      <!-- /.content-wrapper -->
     
<%@include file="../include/footer.jsp"%>
</body>
</html>