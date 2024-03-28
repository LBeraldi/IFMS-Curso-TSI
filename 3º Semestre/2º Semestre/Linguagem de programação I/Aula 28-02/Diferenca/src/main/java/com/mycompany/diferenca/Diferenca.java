package com.mycompany.diferenca;

import java.util.Scanner;

public class Diferenca {

    public static void main(String[] args) {
         Scanner leia = new Scanner(System.in);
        
         int a = leia.nextInt();
         int b = leia.nextInt();
         int c = leia.nextInt();
         int d = leia.nextInt();
         
      int result = (a * b - c *d);
      
        System.out.println("DIFERENCA = " + result);
        
    }
}
