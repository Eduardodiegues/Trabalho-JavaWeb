
<%-- 
    Document   : exibirAutomoveis
    Created on : 26/11/2017, 17:28:33
    Author     : Lucas
--%>

<%@include file="includes/header.jsp" %>

<h2>Último veículo cadastrado</h2>

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
        </tr>
    </thead>
    <tbody>
            <tr>
                <td>${ultimoCadastrado.placa}</td>
                <td>${ultimoCadastrado.chassi}</td>
                <td>${ultimoCadastrado.fabricante}</td>
                <td>${ultimoCadastrado.anofabricacao}</td>
                <td>${ultimoCadastrado.motorizacao}</td>
                <td>${ultimoCadastrado.numportas}</td>
                <td>${ultimoCadastrado.opcionais}</td>
                <td>${ultimoCadastrado.qntestoque}</td>
            </tr>
    </tbody>
        
</table>

<%@include file="includes/footer.jsp"%>