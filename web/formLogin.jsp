<%-- 
    Document   : formLogin
    Created on : 22/11/2017, 20:55:47
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"
    </head>
    <body>
        <center>
            <h3><strong>Concessionária PNEU FURADO</strong></h3>
            <h5>Faça seu login para acessar todos os nossos produtos</h5>

        </center>   
        <form>
            <div style="width: 30%; margin: auto">
                <div class="form-group" >
                    <label for="input-login">Login</label>
                    <input type="text" class="form-control" placeholder="Login" name="login" id="input-login">
                </div>
                <div class="form-group">
                    <label for="input-pass">Senha</label>
                    <input type="password" class="form-control" placeholder="Senha" name="senha" id="input-pass">
                </div>
                <button type="submit" class="btn btn-default">Entrar</button>
            </div>
        </form>       
        
    </body>
</html>
