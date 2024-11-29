<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <title>Crud Servlets e JSP</title>
    <jsp:include page="/publica/publica-estilos.jsp" />
    <jsp:include page="/publica/publica-icon.jsp" />


</head>

<body>

    <jsp:include page="/publica/publica-nav.jsp" />

	



        <div class="div-menu">
            <jsp:include page="/publica/publica-logo.jsp" />

            <div class="op">

                <h1>Recuper senha</h1>


                <form action="${pageContext.request.contextPath}/controladora" method="get" name="meu-form">
                    <div class="form-group">
                        <label for="login">Email</label></br>
                        <input name="login" type="email" class="form-control" id="login" aria-describedby="emailHelp"
                            placeholder="Seu email">
                        <br>
                        <small id="emailHelp" class="form-text text-muted">Nunca vamos compartilhar seu email, com
                            ninguém.</small>
                    </div>

                 


                    <input type="hidden" name="acao" value="recuperar/senha">
                    <br>
                   
                        <br>
                        <br>
                        <button name="btn" type="submit" class="btn btn-primary"
                            onclick="return valida()">Enviar</button>
                            <span><%out.print(request.getAttribute("mensagem"));%></span>
                        <img name="img-confirm" id="img-confirm">
                        <div id="spinner"></div>
                          <c:if test="${mensagem != null}">
                           
                           </c:if>
                    </div>


                </form>


            </div>


        </div>

    </div>


    </div>

   

<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/scripts/validaUsuario.js"></script>
   

    
</body>

</html>