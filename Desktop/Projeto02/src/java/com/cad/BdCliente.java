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
public class BdCliente {
    
    private static ArrayList<Cliente> userCliente;
    
    public static ArrayList<Cliente> getUserCliente(){
        if(userCliente == null){
            userCliente = new ArrayList<>();
            Cliente admincliente = new Cliente();
            admincliente.setNomecliente("Marcos Paulo da Rocha Moura Miudo");
            admincliente.setCpf("123.456.789-10");
            admincliente.setRg("12.345.678-X");
            admincliente.setEmaicliente("marcospaulomoura1999@empresa.com");
            admincliente.setTelefonecliente(13-997662319);
            admincliente.setEnderecocliente("Rua X, N° XX,"); 
        }
        return userCliente;
    }  
}
