package com.mycompany.ex002;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner leia = new Scanner(System.in);

        System.out.println("Dados do 1º cliente: ");
        System.out.print("Número da conta: ");
        int conta = leia.nextInt();
        leia.nextLine();
        System.out.print("Nome do titular: ");
        String nome = leia.nextLine();
        
        ContaBancaria conta1 = new ContaBancaria(conta, nome);
        
        System.out.println("Nome: "+ conta1.titular);
        System.out.println("Conta: "+ conta1.numeroConta);
        System.out.println("Saldo inicial: R$" + conta1.saldo);
        conta1.sacar(10.00);
        conta1.depositar(1000.00);
        conta1.sacar(500);
        System.out.println("Saldo final: R$" + conta1.saldo);
     //------------------------------------------------------------------------   
        System.out.println("");
        System.out.println("Dados do 2º cliente: ");
        System.out.print("Número da conta: ");
        conta = leia.nextInt();
        leia.nextLine();
        System.out.print("Nome do titular: ");
        nome = leia.nextLine();
        
        ContaBancaria conta2 = new ContaBancaria(conta, nome);
        
        System.out.println("Nome: "+ conta2.titular);
        System.out.println("Conta: "+ conta2.numeroConta);
        System.out.println("Saldo inicial: R$" + conta2.saldo);
        conta2.depositar(5000.00);
        conta2.sacar(6000.00);
        conta2.depositar(1000.00);
        conta2.sacar(600.00);
        System.out.println("Saldo final: R$" + conta2.saldo);

//        ContaBancaria conta1 = new ContaBancaria(123, "Lucas");
//        ContaBancaria conta2 = new ContaBancaria(456, "Pedro");
//                
//        conta1.depositar(1000.0);
//        conta2.depositar(1500.0);
//
//        conta1.sacar(800.0);
//        conta2.sacar(2000.0);
//
//        System.out.println("Saldo da conta 1: " + conta1.getSaldo());
//        System.out.println("Saldo da conta 2: " + conta2.getSaldo());
    }
}
