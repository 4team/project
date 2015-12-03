<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<style>
table, th, td {
	border: 1px solid white;
	border-collapse: collapse;
}

th, td {
	padding: 6px;
	text-align: center;
}
</style>
	<!-- Content Header (Page header) -->

	<div style="padding: 70px">
		<h2>이용후기</h2>
		<br>
		<table>
			<tr>
				<th style="width: 100px">번호</th>
				<th style="width: 500px">제목</th>
				<th style="width: 150px">작성자</th>
				<th style="width: 150px">작성일</th>
				<th style="width: 100px">추천수</th>
				<th style="width: 100px">조회수</th>
			</tr>

			<c:forEach items="${list}" var="boardVO">

				<tr>
					<td>${boardVO.bno}</td>
					<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
					<td>${boardVO.writer}</td>
					<td>${boardVO.regdate}</td>
					<td>${boradVO.viewcnt}</td>
					<td>${boradVO.reccnt}</td>

				</tr>
			</c:forEach>
		</table>
			<div style="padding: 10px" align="left">
				<form action="/board/create">
					<input type="submit" value="글쓰기">
				</form>
			</div>
	</div>

</div>
<!-- /.content-wrapper -->

<%@include file="../include/footer.jsp"%>

</body>
</html>
