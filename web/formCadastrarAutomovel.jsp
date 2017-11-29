<%-- 
    Document   : formCadastrarAutomovel
    Created on : 23/11/2017, 21:45:45
    Author     : Lucas
--%>

<%@include file="includes/header.jsp" %>

<div class="container">
    <form action="Automovel" method="get">
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
            
            <div class="form-group">
                <label for="input-automovel-fabricante">Ano do veículo</label>
                <select class="form-control" id="input-automovel-anofabricacao" name="automovel-anofabricacao">
                    <c:forEach var="i" begin="1950" end="2020" step="1">
                        <option value="${i}">${i}</option>
                    </c:forEach>
                    
                </select>
            </div>
            
            <div class="form-group">
                <label>Motorização: </label>
                <br>
                <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="1.0" checked>1.0
                </label>
                 <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="1.2">1.2
                </label>
                 <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="1.4">1.4
                </label>
                <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="1.6">1.6
                </label>
                 <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="1.8">1.8
                </label>
                <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="2.0">2.0
                </label>
                <label class="radio-inline">
                    <input type="radio" name="motorizacao" value="2.2">2.2
                </label>
            </div>
            <div class="form-group">
                <label for="input-automovel-qtdporta">Número de Portas</label>
                <input min="1" required="required" placeholder="Digite o número de portas do veículo" type="number" name="automovel-qntporta" id="input-automovel-qtdporta" class="form-control">
            </div>
            <div class="form-group">
                <label for="input-automovel-opcionais">Opcionais</label>
                <textarea required="required" class="form-control" rows="3" name="opcionais" id="input-automovel-opcionais" placeholder="Opcionais"></textarea>
            </div>
            <div class="form-group">
                <label for="input-automovel-qtdestoque">Quantidade em estoque</label>
                <input min="0" required="required" placeholder="Quantidade de veículos em estoque" type="number" name="automovel-qntestoque" id="input-automovel-qtdestoque" class="form-control">
            </div>
        
            <input type="hidden" value="1" name="opcao">
            
            <button type="submit" class="btn btn-lg btn-primary btn-block">Cadastrar</button>
        </form>
    </div>
<%@include file="includes/footer.jsp" %>
