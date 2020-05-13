/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cad;

/**
 *
 * @author Marcos Paulo da Rocha Moura Miúdo
 */
public class Fornecedor {
   private String nomefornecedor, razaosocial, cnpj, emaifornecedor, enderecofornecedor;
    private int telefonefornecedor;

    public String getNomefornecedor() {
        return nomefornecedor;
    }

    public void setNomefornecedor(String nomefornecedor) {
        this.nomefornecedor = nomefornecedor;
    }

    public String getRazaosocial() {
        return razaosocial;
    }

    public void setRazaosocial(String razaosocial) {
        this.razaosocial = razaosocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getEmaifornecedor() {
        return emaifornecedor;
    }

    public void setEmaifornecedor(String emaifornecedor) {
        this.emaifornecedor = emaifornecedor;
    }

    public String getEnderecofornecedor() {
        return enderecofornecedor;
    }

    public void setEnderecofornecedor(String enderecofornecedor) {
        this.enderecofornecedor = enderecofornecedor;
    }

    public int getTelefonefornecedor() {
        return telefonefornecedor;
    }

    public void setTelefonefornecedor(int telefonefornecedor) {
        this.telefonefornecedor = telefonefornecedor;
    }
}
