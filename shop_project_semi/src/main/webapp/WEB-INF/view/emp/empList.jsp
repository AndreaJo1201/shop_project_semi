<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 목록</title>
</head>
<body>
	<table>
		<tr>
			<td>사원번호</td>
			<td>아이디</td>
			<td>이름</td>
		</tr>
		<c:forEach var="e" items="${list}">
			<tr>
				<td>${e.empCode}</td>
				<td>${e.empId}</td>
				<td>${e.empName}</td>
			</tr>
		</c:forEach>
	</table>
	<!-- 페이징 -->
	<div>
		<c:if test="${currentPage > 10}">
			<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${currentPage-10}">이전</a>
		</c:if>
		<c:forEach var="i" begin="${startPage}" end="${endRow}">
			<c:if test="${i == currentPage}">
				<strong>
					<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${i}">${i}</a>
				</strong>
			</c:if>
			<c:if test="${i != currentPage}">
					<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${i}">${i}</a>
			</c:if>
		</c:forEach>
		<c:if test="${currentPage+10 < lastPage}">
			<a href="${pageContext.request.contextPath}/board/boardList?currentPage=${currentPage+10}">다음</a>
		</c:if>
	</div>
</body>
</html>