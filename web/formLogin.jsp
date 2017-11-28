<%-- 
    Document   : formLogin
    Created on : 22/11/2017, 20:55:47
    Author     : Lucas
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script language="JavaScript" src="js/script.js"></script>
    </head>
    <body>
        <center>
            <h3><strong>Concessionária PNEU FURADO</strong></h3>
            <h5>Faça seu login para acessar todos os nossos produtos</h5>

        </center>   
    <form action="ServletUsuario" onsubmit="return validarFormularioLoginJs()" method="get" class="form-signin">
            <div class="container" style="width: 450px; margin: auto">
                <div class="form-group" >
                    <label for="input-login">Login</label>
                    <input type="text" class="form-control" placeholder="Login" name="login" id="input-login">
                </div>
                <div class="form-group">
                    <label for="input-pass">Senha</label>
                    <input type="password" class="form-control" placeholder="Senha" name="senha" id="input-senha">
                </div>
                <button type="submit" class="btn btn-lg btn-primary btn-block">Entrar</button>
                <p>
  
                <p class="<c:if test="${mensagemErroLogin != null}">alert alert-danger</c:if>" id="mensagemErroLogin">${mensagemErroLogin}</p>                          
                    
                
            </div>
        </form>       
        
    </body>
</html>
