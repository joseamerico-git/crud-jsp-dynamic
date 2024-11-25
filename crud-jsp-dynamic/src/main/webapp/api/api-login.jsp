<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="pt-br">

<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/style.css">
<title>Crud Servlets e JSP</title>
<link rel="icon" href="imagens/icon.webp">
<link
	href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/jquery-3.7.1-dist/jquery-3.7.1.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<title>Crud Servlets e JSP dashboard</title>
<link rel="icon"
	href="${pageContext.request.contextPath}/resources/imagens/icon.webp" />

</head>

<body>

  <jsp:include page="/publica/publica-nav.jsp"/>
      <jsp:include page="/publica/publica-logo.jsp"/>
					


		<div class="div-menu">

			<div class="op">

				
			        <jsp:include page="/publica/publica-login.jsp"/>
			        
			        	<c:if test="${mensagem != null}">
						<span id="mensagem">
							<%
							out.print(request.getAttribute("mensagem"));
							%>!
						</span>
						<script>
							let login = document.getElementById("login");
							login.focus();
						</script>
					</c:if>


			</div>

		</div>
		
		   <jsp:include page="/publica/publica-footer.jsp"/>
</body>

</html>