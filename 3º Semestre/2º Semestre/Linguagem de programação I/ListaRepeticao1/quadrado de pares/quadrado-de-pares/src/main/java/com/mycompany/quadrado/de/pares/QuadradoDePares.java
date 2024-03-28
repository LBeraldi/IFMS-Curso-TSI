package com.mycompany.quadrado.de.pares;

import java.util.Scanner;

public class QuadradoDePares {

    public static void main(String[] args) {
       Scanner leia = new Scanner(System.in);
       
       int n = leia.nextInt();
       int quadrado = 0;
   
       for(int i = 1 ; i <= n ; i++){
           quadrado ++;
           if (quadrado % 2 == 0){
               System.out.print(quadrado + "^2 = ");
               System.out.println(quadrado * quadrado);
           }
           }
       
    }
}
