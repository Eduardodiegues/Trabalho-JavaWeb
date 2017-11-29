<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : exibirAutomoveis
    Created on : 26/11/2017, 17:28:33
    Author     : Lucas
--%>

<%@include file="includes/header.jsp" %>
<table class="table table-hover">
    <thead>
        <tr>
            <th>Placa</th>
            <th>Chassi</th>
            <th>Fabricante</th>
            <th>Ano de Fabricação</th>
            <th>Motorização</th>
            <th>Número de portas</th>
            <th>Opcionais</th>
            <th>Qnt Estoque</th>
            <th>Opções</th>
        </tr>
    </thead>
    <tbody>
        <c:set var="totalEstoque" value="${0}"></c:set>
        <c:forEach var="veiculos" items="${sessionScope.veiculos}">
            <tr>
                <td>${veiculos.placa}</td>
                <td>${veiculos.chassi}</td>
                <td>${veiculos.fabricante}</td>
                <td>${veiculos.anofabricacao}</td>
                <td>${veiculos.motorizacao}</td>
                <td>${veiculos.numportas}</td>
                <td>${veiculos.opcionais}</td>
                <td>${veiculos.qntestoque}</td>
                <td><a href="Automovel?opcao=3&placa=${veiculos.placa}">Remover</a>
                            &nbsp;<a href="Automovel?opcao=4&placa=${veiculos.placa}">Alterar</a>
                </td>
            </tr>
            <c:set var="totalEstoque" value="${totalEstoque + veiculos.qntestoque}"></c:set>
        </c:forEach>
    
    </tbody>
        
</table>
<h3>Quantidade em estoque: ${totalEstoque}</h3>
<%@include file="includes/footer.jsp"%>