package com.mycompany.produtosimples;

import java.util.Scanner;

public class ProdutoSimples {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        int a = leia.nextInt();
        int b = leia.nextInt();
        
        int PROD = (a * b);
        
        System.out.println("PROD = " + PROD);
    }
}
