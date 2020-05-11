/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

import java.util.ArrayList;

/**
 *
 * @author angelo
 */
public class BdFornecedor {
    
    private static ArrayList<Fornecedor> userfornecedor;
    
    public static ArrayList<Fornecedor> getUserFornecedor(){
        if(userfornecedor == null){
            userfornecedor = new ArrayList<>();
            Fornecedor adminfornecedor = new Fornecedor();
            adminfornecedor.setNomefornecedor("Daulocorp");
            adminfornecedor.setRazaosocial("123.456.789-10");
            adminfornecedor.setCnpj("12.345.678-X");
            adminfornecedor.setEmaifornecedor("marcospaulomoura1999@empresa.com");
            adminfornecedor.setTelefonefornecedor(13-997662319);
            adminfornecedor.setEnderecofornecedor("Rua X, N° XX,"); 
        }
        return userfornecedor;
    }  
}
