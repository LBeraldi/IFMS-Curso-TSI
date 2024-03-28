package com.mycompany.par.ou.impar;
import java.util.Scanner;
public class ParOuImpar {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);
        
        int n = leia.nextInt();
        
        for(int i = 0 ; i < n ; i++){
            int x = leia.nextInt();
             if(x % 2 == 0 && x > 0){
                System.out.println("EVEN POSITIVE");
                 
             } else if(x % 2 == 0 && x < 0){
                System.out.println("EVEN NEGATIVE");
                  
             } else if(x % 2 != 0 && x > 0){
                System.out.println("ODD POSITIVE");
                    
             } else if(x % 2 != 0 && x < 0 ){
                System.out.println("ODD NEGATIVE");
             
             } else if(x == 0 ){
                 System.out.println("NULL");
             }
        }
    }
}
