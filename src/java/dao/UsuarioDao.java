/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Usuario;
import java.util.ArrayList;

/**
 *
 * @author Lucas
 */
public class UsuarioDao {
    private static ArrayList<Usuario> lista = null;

    public UsuarioDao() {
        lista = new ArrayList<Usuario>();
    }
      
        
    public void addUsuario(Usuario p)
    {
        lista.add(p);
    }
    
    
    public Usuario consultarUsuario(String login)
    {
        for(Usuario u: lista)
        {
            if(login.equals(u.getLogin()))
                return u;
        }
        return null; 
    }
    
    public boolean validarLogin(Usuario u)
    {
        Usuario user = consultarUsuario(u.getLogin());
        if(user !=  null)
        {
            if(u.getSenha().equals(user.getSenha()))
            {
                return true;
            }else
            {
                return false;
            }                        
        }else 
        {
            return false;
        }    
    }
    
    
}
