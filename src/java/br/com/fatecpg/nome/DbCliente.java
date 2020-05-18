package br.com.fatecpg.nome;

import java.util.ArrayList;


public class DbCliente {
    //Array List
    private static ArrayList<DadosCliente> dados;
    public static ArrayList<DadosCliente> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new DadosCliente("Cliente", "Cliente", "Cliente", "Cliente", "Cliente", "Cliente"));
                dados.add(new DadosCliente("Grupo005", "123.456.789-10", "12.345.678-X", "admin@grupo005.com","Cidade X, Rua X, N° XX", "1234567890"));
            }
            return dados;
    }
    //metodo para inserir contato
    public static void  addDados(DadosCliente dado){
        dados.add(dado);
    }
    //metodo para alterar contato
    public static void updateDados(int index, DadosCliente dado){
        dados.set(index, dado);
    }
    //metodo para remover contato
    public static void remove(int index){
        dados.remove(index);
        
    } 
}
