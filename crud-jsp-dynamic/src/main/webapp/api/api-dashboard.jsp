<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<jsp:include page="/publica/publica-estilos.jsp" />
<jsp:include page="/publica/publica-icon.jsp" />
<title>Crud JSP Maven - Dashboard</title>
</head>

<body>


	<jsp:include page="/publica/publica-nav.jsp" />

	<jsp:include page="/publica/publica-logo.jsp" />

	<c:if test="${token != null}">

		

		<jsp:include page="/publica/publica-menu.jsp" />
	</c:if>


	<jsp:include page="/publica/publica-footer.jsp" />



</body>
</html>