package com.mycompany.salario;

import java.util.Scanner;

public class Salario {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
         int a = leia.nextInt();
         double b = leia.nextDouble();
         double c = leia.nextDouble();
         
         double resultado =  (b * c);
         
         System.out.println("NUMBER = " + a);
         System.out.printf("SALARY = U$ %.2f\n", resultado);

        
    }
}
