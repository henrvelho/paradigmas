/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package postodecombustivel;

import java.util.Date;

/**
 *
 * @author Henrique
 */
public class Combustivel {
    
    private String tipocombustivel;
    private Date datacoleta;
    private float precovenda;

    public Combustivel() {
    }
    
    

    public Combustivel(String tipocombustivel, Date datacoleta, float precovenda) {
        this.tipocombustivel = tipocombustivel;
        this.datacoleta = datacoleta;
        this.precovenda = precovenda;
    }

    public String getTipocombustivel() {
        return tipocombustivel;
    }

    public void setTipocombustivel(String tipocombustivel) {
        this.tipocombustivel = tipocombustivel;
    }

    public Date getDatacoleta() {
        return datacoleta;
    }

    public void setDatacoleta(Date datacoleta) {
        this.datacoleta = datacoleta;
    }

    public float getPrecovenda() {
        return precovenda;
    }

    public void setPrecovenda(float precovenda) {
        this.precovenda = precovenda;
    }

    
    
}
