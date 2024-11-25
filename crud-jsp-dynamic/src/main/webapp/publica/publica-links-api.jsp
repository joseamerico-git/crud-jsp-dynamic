<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<input type="hidden" id="token" name="token"
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