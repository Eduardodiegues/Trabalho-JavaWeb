function validarFormularioLoginJs()
{
    var login = document.getElementById("input-login").value;
    var senha = document.getElementById("input-senha").value;
    if(login == "" || senha == "")
    {
         document.getElementById("mensagemErroLogin").innerHTML = "Favor preencher todos os campos!"; 
         document.getElementById("input-login").focus();
         return false;
    }    
}