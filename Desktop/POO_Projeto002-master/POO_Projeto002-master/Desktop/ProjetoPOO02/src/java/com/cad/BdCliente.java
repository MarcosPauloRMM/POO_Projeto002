/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

import java.util.ArrayList;

/**
 *
 * @author Marcos Paulo da Rocha Moura Miúdo
 */
public class BdCliente {
    
    private static ArrayList<Cliente> usercliente;
    
    public static ArrayList<Cliente> getUsercliente(){
        if(usercliente == null){
            usercliente = new ArrayList<>();
            Cliente admincliente = new Cliente();
            admincliente.setNomecliente("Marcos Paulo da Rocha Moura Miudo");
            admincliente.setRg("12.345.678-X");
            admincliente.setEmailcliente("marcospaulomoura1999@empresa.com");
            admincliente.setTelefonecliente(13-997662319);
            admincliente.setEnderecocliente("Rua X, N° XX,"); 
        }
        return usercliente;
    }  
}
