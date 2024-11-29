<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	 <head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/jquery-3.7.1-dist/jquery-3.7.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/bootstrap-5.1.3-dist/css/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css"/>
    <title>Crud Servlets e JSP dashboard</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/imagens/icon.webp"/>


</head>
	
<div class="div-menu">
	

	<div id="op" class="op">
		<h1>Dashboard</h1>
		<span id="bem-vindo">Bem vindo! <%
		out.print(request.getAttribute("login"));
		%>!
		</span>
		<form class="fcc-btn" id="meu-form" action="controladora" method="GET">
			<c:if test="${token != null}">
			   <jsp:include page="/publica/publica-links-api.jsp"/>
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
		<a class="fcc-btn" href="api/api-cadastrar-usuario.jsp">Adicionar um novo
			usuário</a> 
			<a class="fcc-btn" 
			href="listar-usuarios.jsp">Listar
			usuários cadastrados</a>
			 <a class="fcc-btn" href="listar-clientesapi.jsp">Listar
			clientes cadastrados api?</a>
			 <a class="fcc-btn"
			href="controladora?acao=RelatorioUsuario">Relatório</a>

	</div>

</div>
