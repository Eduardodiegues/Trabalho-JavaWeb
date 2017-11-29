function validarFormularioLoginJs()
{
    var login = document.getElementById("input-login").value;
    var senha = document.getElementById("input-senha").value;
    var campoAlerta = document.getElementById("mensagemErroLogin");
    
    if(login == "" || senha == "")
    {
        campoAlerta.setAttribute("class", "alert alert-danger"); 
        campoAlerta.innerHTML = "Favor preencher todos os campos!"; 
        document.getElementById("input-login").focus(); 
        return false;
    }
}