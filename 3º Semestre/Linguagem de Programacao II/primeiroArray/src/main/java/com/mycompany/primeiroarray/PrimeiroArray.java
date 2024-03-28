
package com.mycompany.primeiroarray;
import java.util.Scanner;

public class PrimeiroArray {
===
    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
       // int vetor[] = new int[4];
        
       double vetor [] = new double[5];
       double soma = 0;

       for(int i = 0; i < vetor.length ; i++){
        vetor[i] = leia.nextDouble();
        soma = vetor[i] + soma; 
        
       }
       
       vetor[4] = soma/5;
       
       System.out.println(vetor[4]);
       
       if(vetor[4] >= 6){
           System.out.println("Aprovado!!!");
       }else{
           System.out.println("Reprovado!!!");
       }
       }
    }
}
