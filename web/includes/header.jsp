<%-- 
    Document   : cabecalho
    Created on : 23/11/2017, 21:44:50
    Author     : Lucas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="JavaScript" src="js/jquery-3.2.1.min.js"></script>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <script language="JavaScript" src="bootstrap/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Concessionária PNEU FURADO</title>   
        
    </head>
    <body>
        <script>
            $('.dropdown').dropdown();
        </script>
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a href="index.jsp" class="navbar-brand">Home</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <c:if test="${usuario != null}">
                        <li>
                            <a href="ServletUsuario?opcao=2">Cadastrar Automóvel</a>
                        </li>
                        </c:if>
                        <li>
                            <a href="ServletUsuario?opcao=3">Exibir Automóveis</a>
                        </li>
                        <c:if test="${ultimoCadastrado != null}">
                        <li>
                            <a href="ServletUsuario?opcao=5">Último Cadastrado</a>
                        </li>
                        </c:if>
                        <li>
                            <a href="ServletUsuario?opcao=4">Login</a>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right nav-pills">
                        <li class="dropdown">
                            <c:choose>
                                <c:when test="${usuario != null}">
                                    <div class="dropdown-toggle">
                                        <button id="dLabel" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Usuário: ${usuario}
                                            <span class="caret"></span>
                                        </button>
                                            <ul class="dropdown-menu" aria-labelledby="dLabel">
                                                <li><a href="ServletUsuario?opcao=6">Logout</a></li>
                                            </ul>
                                    </div>
                                </c:when>
                                <c:otherwise>
                                    <a href="ServletUsuario?opcao=4">Você não está logado, efetuar login</a>
                                </c:otherwise>
                            </c:choose>
                        </li>
                    </ul>
                        
                </div>
            </div>  
        </nav>
                                    
                                   
                        
        

