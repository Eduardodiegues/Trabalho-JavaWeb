<%-- 
    Document   : cabecalho
    Created on : 23/11/2017, 21:44:50
    Author     : Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Concessionária PNEU FURADO</title>    
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="index.jsp" class="navbar-brand">Home</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="#">Cadastrar Automóvel</a>
                        </li>
                        <li>
                            <a href="#">Exibir Automóveis</a>
                        </li>
                        <li>
                            <a href="#">Login</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active">
                            <a>Usuário: ${usuario}</a>
                        </li>
                    </ul>
                </div>
            </div>  
        </nav>
                        
        

