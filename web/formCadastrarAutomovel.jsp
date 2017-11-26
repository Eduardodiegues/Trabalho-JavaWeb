<%-- 
    Document   : formCadastrarAutomovel
    Created on : 23/11/2017, 21:45:45
    Author     : Lucas
--%>

<%@include file="includes/header.jsp" %>

    <div class="container">
        <form action="" method="get">
            <div class="form-group">
                <label for="input-automovel-placa">Placa</label>
                <input required="required" placeholder="Digite a placa do veículo" type="text" name="automovel-placa" id="input-automovel-placa" class="form-control">
            </div>
            <div class="form-group">
                <label for="input-automovel-chassi">Chassi</label>
                <input required="required" placeholder="Digite o chassi do veículo" type="text" name="automovel-chassi" id="input-automovel-chassi" class="form-control">
            </div>
            
            <div class="form-group">
                <label for="input-automovel-fabricante">Fabricante</label>
                <input required="required" placeholder="Digite o fabricante do veículo" type="text" name="automovel-fabricante" id="input-automovel-fabricante" class="form-control">
            </div>
            
            
            
        </form>
    </div>
    </body>
</html>
