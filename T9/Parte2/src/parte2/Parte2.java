/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package parte2;

/**
 *
 * @author Henrique
 */
public class Parte2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
    int i;
      Estacionamento estacionamento = new Estacionamento();
      Veiculo carro = new Veiculo("carro","ixx-6435");
      Veiculo carro2 = new Veiculo("moto","iwl-6369");
      long data  = System.currentTimeMillis();
      for(i=0; i<=999; i++){
          System.out.println("dando um tempo");
      }
      estacionamento.entraveiculo(data, carro);
      estacionamento.entraveiculo(data, carro2);
      long datas  = System.currentTimeMillis();
      System.out.println(estacionamento.saiveiculo(datas, carro));
      System.out.println(estacionamento.saiveiculo(datas, carro2));
      
      
      
    
   // System.out.println(data);
    }

    
}
