<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>goods one</title>
	</head>
	<body>
		<div>
			<img src="${pageContext.request.contextPath}/upload/${m.filename}" width="200px" height="200px" alt="상품 이미지"/>
		</div>
		<div>${m.goodsName}</div>
		<div>${m.goodsPrice}</div>
		<a href="${pageContext.request.contextPath}/modifyGoods?goodsCode=${m.goodsCode}">수정</a>
		<a href="${pageContext.request.contextPath}/removeGoods?goodsCode=${m.goodsCode}&filename=${m.filename}">삭제</a>
	</body>
</html>