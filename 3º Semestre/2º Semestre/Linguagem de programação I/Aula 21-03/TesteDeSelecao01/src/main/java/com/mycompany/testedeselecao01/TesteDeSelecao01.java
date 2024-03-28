package com.mycompany.testedeselecao01;

    import java.util.Scanner;

public class TesteDeSelecao01 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        int a = leia.nextInt();
        int b = leia.nextInt();
        int c = leia.nextInt();
        int d = leia.nextInt();
        int soma1 = c + d;
        int soma2 = a + b;
       // double soma3 = a%2;
        
        if (b > c ) {
            
        } else if (d < a) {
            
        } else if (soma1 < soma2) {
            
        } else if (c < 0 && d < 0) {
            
        } else if (a %25 == 0) {
            System.out.println("Valores aceitos");  
        }else{
            System.out.println("Valores nao aceitos");
        }
    }
}
