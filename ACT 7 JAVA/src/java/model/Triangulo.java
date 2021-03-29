
package model;

/*@Ramon*/
public class Triangulo {
    private double base;
    private double altura;
    
    public Triangulo(double base, double altura){
        this.base = base;
        this.altura = altura;
    }
    
    public Double getPerimetro(){
        return this.base * 3;
    }
    
    
    
    public Double getArea(){
        return (this.base*this.altura)/2;
    }
    
    
}
