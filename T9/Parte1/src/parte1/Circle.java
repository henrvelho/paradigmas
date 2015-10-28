/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte1;

import static java.lang.Math.pow;

/**
 *
 * @author Henrique
 */
public class Circle {
    private Ponto ponto;
    private float raio;

    public Circle(Ponto ponto, float raio) {
        this.ponto = ponto;
        this.raio = raio;
    }

    public Circle(float x, float y, float raio) {
        Ponto ponto2 = new Ponto(x, y);
        this.ponto = ponto2;
        this.raio = raio;
    }
    
    

    public Ponto getPonto() {
        return ponto;
    }

    public void setPonto(Ponto ponto) {
        this.ponto = ponto;
    }

    public float getRaio() {
        return raio;
    }

    public void setRaio(float raio) {
        this.raio = raio;
    }
    
    public float getDiameter(){
        return (float) this.raio + this.raio;
    }
    
    public float getArea(){
        float area = (float) (3.14 * this.raio);
        area  =  (float) pow(area, 2);
        return area;
    }
    
    public void imprime(){
        System.out.println("Ponto(x): " + this.ponto.getX());
        System.out.println("Ponto(y): " + this.ponto.getY());
        System.out.println("Raio: " + this.raio);
    }
    
    
    
    
    
}
