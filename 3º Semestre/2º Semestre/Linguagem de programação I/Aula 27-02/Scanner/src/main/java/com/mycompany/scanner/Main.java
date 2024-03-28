package com.mycompany.scanner;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
       // System.out.println("Hello World!");
        
        Scanner leia = new Scanner(System.in);
        
        int a = leia.nextInt();
        int b = leia.nextInt();
        int x;
        
        x = a + b;
        System.out.println("X = " + x);
    }
}
