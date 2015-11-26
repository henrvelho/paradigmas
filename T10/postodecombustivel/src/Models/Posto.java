/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.util.ArrayList;
import postodecombustivel.Combustivel;

/**
 *
 * @author Henrique
 */
public class Posto {
    
    private String cnpj;
    private String razaosocial;
    private String nomefantasia;
    private String bandeira;
    private String endereco;
    private String cep;
    private String imagem;
    private ArrayList<Combustivel> combustivel;

    public Posto(String cnpj, String razaosocial, String nomefantasia, String bandeira, String endereco, String cep, String imagem, ArrayList<Combustivel> combustivel) {
        this.cnpj = cnpj;
        this.razaosocial = razaosocial;
        this.nomefantasia = nomefantasia;
        this.bandeira = bandeira;
        this.endereco = endereco;
        this.cep = cep;
        this.imagem = imagem;
        this.combustivel = combustivel;
    }

    public Posto() {
    }
 
    

    public ArrayList<Combustivel> getCombustivel() {
        return combustivel;
    }

    public void setCombustivel(ArrayList<Combustivel> combustivel) {
        this.combustivel = combustivel;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getRazaosocial() {
        return razaosocial;
    }

    public void setRazaosocial(String razaosocial) {
        this.razaosocial = razaosocial;
    }

    public String getNomefantasia() {
        return nomefantasia;
    }

    public void setNomefantasia(String nomefantasia) {
        this.nomefantasia = nomefantasia;
    }

    public String getBandeira() {
        return bandeira;
    }

    public void setBandeira(String bandeira) {
        this.bandeira = bandeira;
    }

    public String getEndereco() {
        return endereco;
    }

    public void setEndereco(String endereco) {
        this.endereco = endereco;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getImagem() {
        return imagem;
    }

    public void setImagem(String imagem) {
        this.imagem = imagem;
    }
    
     
}


