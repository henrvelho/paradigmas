/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package parte1;

import static java.lang.Math.sqrt;

/**
 *
 * @author Henrique
 */
public class Ponto {
    private float x;
    private float y;

    public Ponto() {
        this.x = (float) 0.0;
        this.y = (float) 0.0;
    }

    public Ponto(float x, float y) {
        this.x = x;
        this.y = y;
    }
    
    

    public float getX() {
        return x;
    }

    public void setX(float x) {
        this.x = x;
    }

    public float getY() {
        return y;
    }

    public void setY(float y) {
        this.y = y;
    }
    
    
    
    public void deslocaPonto(float dx, float dy){
        this.x = this.x + dx;
        this.y = this.y + dy;
    }
    
    public float calculaDistancia(float x, float y){
        float distancia, dx, dy;
        if(this.x > x)
            dx = this.x - x;
        else
            dx = x - this.x;
       
        if(this.y > y)
            dy = this.y - y;
        else
            dy = y - this.y;
            
        distancia   = (float) sqrt(dx*dx + dy*dy);
        return distancia;
    }
    
    
    
}
