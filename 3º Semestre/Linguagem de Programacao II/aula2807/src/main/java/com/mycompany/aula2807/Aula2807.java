package com.mycompany.aula2807;

import java.util.Scanner;

public class Aula2807 {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
      
        System.out.print("Informe o número de linhas da matriz: ");
        int linha = leia.nextInt();
        
        System.out.print("Informe o número de colunas da matriz: ");
        int coluna = leia.nextInt();
        
        int mat[][] = new int [linha][coluna];
        
    /*    int mat[][] = {
            {1,2,3,4},
            {5,6,7,},   
            {9,10,11,12}
        };
        */
    
        
        for(int i = 0; i < mat.length ; i++){ // iterar sobre linhas
            for(int j = 0; j < mat[i].length; j++){ // iterar sobre colunas
                System.out.print("Informe o valor de ["+i+"]["+j+"]: ");
             mat[i][j] = leia.nextInt();
            }
        }
        
        for(int i = 0; i < mat.length ; i++){ // iterar sobre linhas
            for(int j = 0; j < mat[i].length; j++){ // iterar sobre colunas
                System.out.print(mat[i][j] + "");
            }
            System.out.println("");
        }
           
        }
    }

