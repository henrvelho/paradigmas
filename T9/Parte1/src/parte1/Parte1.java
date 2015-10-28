/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte1;

/**
 *
 * @author iffarroupilha09
 */
public class Parte1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {  
        Ponto ponto2 = new Ponto((float) 12.1, (float) 2.2);
        
        Circle c1 = new Circle(ponto2,(float) 12.23);
        c1.imprime();
        System.out.println("Area: "+ c1.getArea());
        System.out.println("Diametro: " + c1.getDiameter());
        
        System.out.println(  );
        
        Circle c2 = new Circle((float)12.2, (float)22.2, (float)12.2);
        c2.imprime();
        System.out.println("Area: "+ c2.getArea());
        
        System.out.println("Diametro: " + c2.getDiameter());
        
        
       
        // TODO code application logic here
    }
    
}
