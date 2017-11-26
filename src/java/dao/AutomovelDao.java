/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import beans.Automovel;
import java.util.ArrayList;

/**
 *
 * @author Lucas
 */
public class AutomovelDao {
    private static ArrayList<Automovel> automoveis = null;
    
    public void addAutomovel(Automovel a)
    {
        automoveis.add(a);
    }
    
    
}
