package com.mycompany.soma;

import java.util.Scanner;

public class Soma {

    public static void main(String[] args) {
        
        Scanner leia = new Scanner(System.in);
        
        int a = leia.nextInt();
        int b = leia.nextInt();
        
        int SOMA = (a + b);
        
        System.out.println("SOMA = " + SOMA);
        
    }
}
