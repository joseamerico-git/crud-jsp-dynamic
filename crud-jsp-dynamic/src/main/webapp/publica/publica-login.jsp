<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="div-login">

	<fieldset>
		<form id="form-login" method="GET"
			action="${pageContext.request.contextPath}/controladora">
			<h1>Login de Usuário</h1>

			<hr>
			<label>Login:</label> <input name="login" id="login" type="text"
				class="form-control"> <label for="password">Password:</label>
			<input name="password" id="password" type="password"
				class="form-control"> <input type="hidden" name="acao"
				value="auth/login">


			<button id="btnLoginApi" name="btnLoginApi" type="submit"
				class="btn btn-primary">Login normal</button>
				
				<a href="${pageContext.request.contextPath}/api/api-cadastrar-usuario.jsp">Registrar</a>
				<a href="${pageContext.request.contextPath}/api/api-recuperar-senha.jsp">Esqueci minha senha</a>

		</form>
	</fieldset>

</div>