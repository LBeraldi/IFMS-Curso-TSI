package com.mycompany.ex002;

public class ContaBancaria {
    int numeroConta;
    String titular;
    double saldo;
    
    ContaBancaria(int numeroConta, String titular){
        this.numeroConta = numeroConta;
        this.titular = titular;
        this.saldo = 0;
    }
    
    double getSaldo() {
        return saldo;
    }

    void setSaldo(double saldo) {
        this.saldo = saldo;
    }

    void depositar(double valor) {
        if (true) {
            saldo += valor;
            System.out.println("Depósito de R$" + valor + " realizado com sucesso.");
        }else{
            System.out.println("Depósito Inválido!");
        }
       }

    void sacar(double valor) {
        if (valor <= saldo) {
            saldo -= valor;
            System.out.println("Saque de R$" + valor + " realizado com sucesso.");
        } else {
            System.out.println("Saldo insuficiente para o saque de R$" + valor + ".");
        }
    }
    
}
