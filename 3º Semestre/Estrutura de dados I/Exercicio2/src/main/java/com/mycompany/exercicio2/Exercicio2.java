package com.mycompany.exercicio2;

import java.util.Scanner;

public class Exercicio2 {

    public static void main(String[] args) {
       Scanner leia = new Scanner(System.in);
        System.out.println("Quantos valores deseja ordenar !?");
       int v = leia.nextInt();
       
       int x[]= new int[v];
       
        for(int i = 0; i < x.length; i++ ){
            System.out.println("Entre com o "+ (i+1) +"º valor;");
            x[i] = leia.nextInt();
        }
        
        for (int n = 1; n <= x.length; n++) {
            for (int i = 0; i < x.length; i++) {
                if (x[i] > x[i + 1]) {
                    // Troca os elementos se estiverem fora de ordem
                    int aux = x[i];
                    x[i] = x[i + 1];
                    x[i + 1] = aux;
                }
            }
        }
        
         System.out.println("Quantidade de valores a ser ordenado : "+ v);
         System.out.println("Valores recebidos:");
        for(int i = 0; i < x.length; i++ ){
            System.out.println(x[i]);
        }

    }
}
       