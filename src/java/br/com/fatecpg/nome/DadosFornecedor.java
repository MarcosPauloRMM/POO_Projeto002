
package br.com.fatecpg.nome;

//Set e Get
public class DadosFornecedor {
    private String nomefornecedor;
    private String razaosocialfornecedor;
    private String cnpjfornecedor;
    private String emailfornecedor;
    private String enderecofornecedor;
    private String telefonefornecedor;
    
    //Declaração
    public DadosFornecedor(String nomefornecedor, String razaosocialfornecedor, String cnpjfornecedor, String emailfornecedor, String enderecofornecedor, String telefonefornecedor) {
        this.nomefornecedor = nomefornecedor;
        this.razaosocialfornecedor = razaosocialfornecedor;
        this.cnpjfornecedor = cnpjfornecedor;
        this.emailfornecedor = emailfornecedor;
        this.enderecofornecedor = enderecofornecedor;
        this.telefonefornecedor = telefonefornecedor;
    }

    public String getNomefornecedor() {
        return nomefornecedor;
    }

    public void setNomefornecedor(String nomefornecedor) {
        this.nomefornecedor = nomefornecedor;
    }

    public String getRazaosocialfornecedor() {
        return razaosocialfornecedor;
    }

    public void setRazaosocialfornecedor(String razaosocialfornecedor) {
        this.razaosocialfornecedor = razaosocialfornecedor;
    }

    public String getCnpjfornecedor() {
        return cnpjfornecedor;
    }

    public void setCnpjfornecedor(String cnpjfornecedor) {
        this.cnpjfornecedor = cnpjfornecedor;
    }

    public String getEmailfornecedor() {
        return emailfornecedor;
    }

    public void setEmailfornecedor(String emaifornecedor) {
        this.emailfornecedor = emaifornecedor;
    }

    public String getEnderecofornecedor() {
        return enderecofornecedor;
    }

    public void setEnderecofornecedor(String enderecofornecedor) {
        this.enderecofornecedor = enderecofornecedor;
    }

    public String getTelefonefornecedor() {
        return telefonefornecedor;
    }

    public void setTelefonefornecedor(String telefonefornecedor) {
        this.telefonefornecedor = telefonefornecedor;
    }
}
