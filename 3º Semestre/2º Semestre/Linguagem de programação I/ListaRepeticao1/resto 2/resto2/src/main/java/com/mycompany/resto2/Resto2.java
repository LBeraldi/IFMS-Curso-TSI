    package com.mycompany.resto2;
    import java.util.Scanner;

    public class Resto2 {

        public static void main(String[] args) {
            Scanner leia = new Scanner(System.in);

            int n = leia.nextInt();

            for(int i = 0 ; i < 10000 ; i++){
                if(i % n == 2){
                    System.out.println(i);
                }
            }

        }
    }
