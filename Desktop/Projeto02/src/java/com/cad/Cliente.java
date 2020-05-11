/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

/**
 *
 * @author angelo
 */
public class Cliente{

    private String nomecliente, cpf, rg, emaicliente, enderecocliente;
    private int telefonecliente;

    public String getNomecliente() {
        return nomecliente;
    }

    public void setNomecliente(String nomecliente) {
        this.nomecliente = nomecliente;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getRg() {
        return rg;
    }

    public void setRg(String rg) {
        this.rg = rg;
    }

    public String getEmaicliente() {
        return emaicliente;
    }

    public void setEmaicliente(String emaicliente) {
        this.emaicliente = emaicliente;
    }

    public int getTelefonecliente() {
        return telefonecliente;
    }

    public void setTelefonecliente(int telefonecliente) {
        this.telefonecliente = telefonecliente;
   
    }
    
    public String getEnderecocliente() {
        return enderecocliente;
    }

    public void setEnderecocliente(String enderecocliente) {
        this.enderecocliente = enderecocliente;
    }
}
   
