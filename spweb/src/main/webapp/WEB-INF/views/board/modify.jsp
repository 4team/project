<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../include/header.jsp" %>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        
        
        <form action="/board/modify" method="post">
			<input type="hidden" name="bno" value="${board.bno}">
	        <table class="table table-bordered">
	        	
	        		<tr style="width: 10px"><td>BNO : ${board.bno}</td></tr>
	        		<tr><td>TITLE <input type="text" name="title" value="${board.title}"></td></tr>
	        		<tr><td>WRITER <input type="text"  name ='writer' value="${board.writer}"></td></tr>
	        		<tr><td>CONTENT <input type="text" name='content' value="${board.content}"></td></tr>
	        		
	        		</table>
	        		
	        	
			<input type="submit" value="수정">
		</form>
		   
<form action="/board/read">
<input type="hidden" name="bno" value="${board.bno}">
<input type="submit" value="취소">
</form>
        		   
        		      		
      </div><!-- /.content-wrapper -->
     
<%@include file="../include/footer.jsp"%>

 </body>
</html>
    