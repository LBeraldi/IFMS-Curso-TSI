package com.mycompany.mavenproject1;

import java.util.Scanner;

public class Mavenproject1 {

    public static void main(String[] args) {
        
        double n =  3.14159;
       
                
        System.out.println("Digite o valor do raio do circulo : ");
        
        Scanner ler = new Scanner(System.in);
        
        double raio = ler.nextDouble();
        
        double area = n*(raio*raio);
        
        System.out.printf("A=%.4f", area);
     
    }
}
