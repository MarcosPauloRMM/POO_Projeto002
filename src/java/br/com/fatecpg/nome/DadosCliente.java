
package br.com.fatecpg.nome;

//Set e Get
public class DadosCliente {
    private String nomecliente;
    private String cpfcliente;
    private String rgcliente;
    private String emailcliente;
    private String enderecocliente;
    private String telefonecliente;
    
    //Declaração
    public DadosCliente(String nomecliente, String cpfcliente, String rgcliente, String emailcliente, String enderecocliente, String telefonecliente) {
        this.nomecliente = nomecliente;
        this.cpfcliente = cpfcliente;
        this.rgcliente = rgcliente;
        this.emailcliente = emailcliente;
        this.enderecocliente = enderecocliente;
        this.telefonecliente = telefonecliente;
        
        
    }

   public String getNomecliente() {
        return nomecliente;
    }

    public void setNomecliente(String nomecliente) {
        this.nomecliente = nomecliente;
    }

    public String getCpfcliente() {
        return cpfcliente;
    }

    public void setCpfcliente(String cpfcliente) {
        this.cpfcliente = cpfcliente;
    }

    public String getRgcliente() {
        return rgcliente;
    }

    public void setRgcliente(String rgcliente) {
        this.rgcliente = rgcliente;
    }

    public String getEmailcliente() {
        return emailcliente;
    }

    public void setEmailcliente(String emailcliente) {
        this.emailcliente = emailcliente;
    }

    public String getTelefonecliente() {
        return telefonecliente;
    }

    public void setTelefonecliente(String telefonecliente) {
        this.telefonecliente = telefonecliente;
   
    }
    
    public String getEnderecocliente() {
        return enderecocliente;
    }

    public void setEnderecocliente(String enderecocliente) {
        this.enderecocliente = enderecocliente;
    }
}
