<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="div-menu">
	<div class="div_img">
		<img  src="${pageContext.request.contextPath}/resources/imagens/icon.webp" alt="icone">
	</div>

	<div id="op" class="op">
		<h1>Dashboard</h1>
		<form id="meu-form" action="controladora" method="GET">
			<c:if test="${token != null}">
				<input type="text" id="token" name="token"
					value="<%out.print(request.getAttribute("token"));%>"></input>
				<input type="hidden" id="acao" name="acao" value="pontecliente">
				<input type="hidden" name="login"
					value="<%out.print(request.getAttribute("login"));%>">
				<button class="fcc-btn" type="submit" onclick="return cadastrar()">Cadastrar
					Cliente na api</button>
				<button class="fcc-btn" onclick="return listar()" type="submit">Listar
					Clientes na api</button>
				<button class="fcc-btn" onclick="return relatorio()" type="submit">Relatorio
					de clientes na api</button>
		</form>

		<script>
			let login = document.getElementById("login");
			let token = document.getElementById("token");
			let op = document.getElementById("op");
			let link = document.createElement("a");
			link.href = "cadastroCliente.jsp";
			link.value = "Cadastrar Cliente";
			op.append(link);
			token.value = "${token}";
			console.log("token " + token.value);

			function listar() {
				let acao = document.getElementById("acao");
				acao.value = "pontecliente/listar";
				form = document.getElementById("meu-form");
				form.submit();

				return true;

			}
			function cadastrar() {
				let acao = document.getElementById("acao");
				acao.value = "pontecliente/cadastrar";
				form = document.getElementById("meu-form");
				form.method = "POST";
				form.submit();
				return true;

			}
			function relatorio() {
				let acao = document.getElementById("acao");
				acao.value = "pontecliente/relatorio";
				form = document.getElementById("meu-form");
				form.submit();
				return true;
			}
		</script>
		</c:if>
		<a class="fcc-btn" href="adiciona-usuarios.jsp">Adicionar um novo
			usuário</a> <a class="fcc-btn" href="listar-usuarios.jsp">Listar
			usuários cadastrados</a> <a class="fcc-btn" href="listar-clientesapi.jsp">Listar
			clientes cadastrados api?</a> <a class="fcc-btn"
			href="controladora?acao=RelatorioUsuario">Relatório</a>

	</div>

</div>
