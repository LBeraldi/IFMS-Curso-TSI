package com.mycompany.media1;

import java.util.Scanner;

public class Media1 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        double a = leia.nextDouble();
         a = a*3.5;
        double b = leia.nextDouble();
         b = b*7.5;
         
        double media = (a + b)/11;
        
        System.out.printf("MEDIA = %.5f\n", media);
        
        
    }
}
