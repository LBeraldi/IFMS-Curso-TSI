package com.mycompany.media2;

import java.util.Scanner;

public class Media2 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        double a = leia.nextDouble();
        double b = leia.nextDouble();
        double c = leia.nextDouble();
        
            a = (a * 2);
            b = (b * 3);
            c = (c * 5);
            
        double resultado = (a + b + c)/(10);
        
        System.out.printf("MEDIA = %.1f\n", resultado);
        
        
        
        
    }
}
