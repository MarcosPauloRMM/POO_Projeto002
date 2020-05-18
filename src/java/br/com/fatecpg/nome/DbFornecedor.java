package br.com.fatecpg.nome;

import java.util.ArrayList;


public class DbFornecedor {
    //Array List
    private static ArrayList<DadosFornecedor> dados;
    public static ArrayList<DadosFornecedor> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new DadosFornecedor("Fornecedor", "Fornecedor", "Fornecedor", "Fornecedor", "Fornecedor", "Fornecedor"));
                dados.add(new DadosFornecedor("RicardoPupo", "ProfessorFatec", "12.345.678/9101-12", "Ricardo@ProfessorFatec.com", "Cidade D, Rua L, N° IV", "01-987654321"));
            }
            return dados;
    }
    //metodo para inserir contato
    public static void  addDados(DadosFornecedor dado){
        dados.add(dado);
    }
    //metodo para alterar contato
    public static void updateDados(int index, DadosFornecedor dado){
        dados.set(index, dado);
    }
    //metodo para remover contato
    public static void remove(int index){
        dados.remove(index);
        
    } 
}
