package com.mycompany.lanche;

 import java.util.Scanner;

public class Lanche {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
             int cod = leia.nextInt();
             int quant = leia.nextInt();
        
        if (cod == 1) {
            double soma = (4.00 * quant);
            System.out.printf("Total: R$ %.2f\n",soma);

        }else if (cod == 2) {
            double soma = (4.50 * quant);
            System.out.printf("Total: R$ %.2f\n",soma);
        
        }else if (cod == 3) {
            double soma = (5.00 * quant);
            System.out.printf("Total: R$ %.2f\n",soma);
        
        }else if (cod == 4) {
            double soma = (2.00 * quant);
            System.out.printf("Total: R$ %.2f\n",soma);
        
        }else if (cod == 5) {
            double soma = (1.50 * quant);
            System.out.printf("Total: R$ %.2f\n",soma);
            
        }
        
        
    }
}
