/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package parte2;

/**
 *
 * @author Henrique
 */
public class Estacionamento {
    public long datae;
    public long datas;
    public float valor;
    //public long entrada;
    //public long saida;
    public Veiculo carro;
    
   
    


    public void entraveiculo(long data, Veiculo carro){
        this.datae = data;
        this.carro = carro;
        System.out.println();
        


}
    
    public float saiveiculo(long data, Veiculo carro){
        float vmoto = (float) 1.5;
        float vcarro = 3;
        this.datas = data;
        this.carro = carro;
        System.out.println("tempo decorrido " + (datas - datae));
        
        if("moto".equals(carro.tipo)){
            valor = (datas - datae) * vmoto;
        } else {
            valor = (datas - datae) * vcarro;
        }
        return valor;
        
        
        
    }
    
    
}



    
