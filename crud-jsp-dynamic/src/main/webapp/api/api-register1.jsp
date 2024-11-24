<%@page import="model.api.Role"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.Arrays" %>

<head>
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
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/validaUsuario.js"></script>


</head>
<div class="container">

	<jsp:include page="/publica/publica-nav.jsp" />


	<div class="">
		<div class="div_img">
			<img
				src="${pageContext.request.contextPath}/resources/imagens/icon.webp"
				alt="icone">
		</div>

		<div class="op">

			<h1>Cadastro de Usuários na "API HIDROBIKE "</h1>
			<h2>"http://xxx.xxx.xxx.xx/auth/register"</h2>


			<form action="controladora" method="POST" name="meu-form">
				<div class="form-group">
					<label for="login">Email</label></br> <input name="login" type="email"
						class="form-control" id="login" aria-describedby="emailHelp"
						placeholder="Seu email"> <br> <small id="emailHelp"
						class="form-text text-muted">Nunca vamos compartilhar seu
						email, com ninguém.</small>
				</div>

				<div class="form-group">
					<label for="password">Senha</label> <input name="password"
						type="password" class="form-control" id="password"
						placeholder="Senha">
				</div>
				<div class="form-group">
					<label for="password1">Senha</label> <input name="password1"
						type="password" class="form-control" id="password1"
						placeholder="Senha">
				</div>


				<input type="hidden" name="acao" value="auth/register"> <br>
				<div>
					<select name="role" class="form-control">
						<c:forEach var="u" items="<%=Role.values()%>">
							<option name="" id="${u.getId(u)}" value="${u.getDescricao()}">${u.getDescricao()}</option>
						</c:forEach>
					</select> <br> <br>
					<button name="btn_register" id="btn_register" type="submit"
						class="btn btn-primary" onclick="return valida()">Enviar</button>
					<img name="img-confirm" id="img-confirm">
					<div id="spinner"></div>
					${msg}
				</div>


			</form>


		</div>


	</div>

</div>



