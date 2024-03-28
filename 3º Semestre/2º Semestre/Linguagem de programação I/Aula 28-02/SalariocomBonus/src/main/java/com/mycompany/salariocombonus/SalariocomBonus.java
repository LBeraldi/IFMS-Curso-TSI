package com.mycompany.salariocombonus;

import java.util.Scanner;

public class SalariocomBonus {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        String nome = leia.next();
        double fixo = leia.nextDouble();
        double vendas = leia.nextDouble();
        
        double bonus = (vendas * 0.15);
         double salario = (fixo + bonus);
         
         System.out.printf("TOTAL = R$ %.2f\n", salario);
        
    }
}
