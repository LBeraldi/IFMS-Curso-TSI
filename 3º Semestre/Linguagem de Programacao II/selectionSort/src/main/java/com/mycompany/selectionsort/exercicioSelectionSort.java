package com.mycompany.selectionsort;

    import java.util.Scanner;
    public class exercicioSelectionSort {
        public static void main(String[] args){
            
        Scanner leia = new Scanner(System.in);

        System.out.print("Digite o valor de N: ");
        int N = leia.nextInt();

        int[] vet = new int[N];

        System.out.println("Digite os " + N + " valores inteiros: ");
        for (int i = 0; i < N; i++) {
            vet[i] = leia.nextInt();
        }

        for (int i = 0; i < N - 1; i++) {
            for (int j = i + 1; j < N; j++) {
                if (vet[i] < vet[j]) {
                    int temp = vet[i];
                    vet[i] = vet[j];
                    vet[j] = temp;
                }
            }
        }

        System.out.println("Valores ordenados em ordem decrescente: ");
        for (int i = 0; i < N; i++) {
            System.out.print(vet[i] + " ");
        }

        }
}
