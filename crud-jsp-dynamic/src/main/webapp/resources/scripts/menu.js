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