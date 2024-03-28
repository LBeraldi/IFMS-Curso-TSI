
package com.mycompany.resto2;

public class atividade8 {
    public static void main(String[] args) {
                int n = arr.length;

        for (int i = 0; i < n - 1; i++) {
            int menor = i;
            for (int j = i + 1; j < n; j++) {
                if (arr[j] < arr[menor]) {
                    menor = j;
                }
            }

            int temp = arr[menor];
            arr[menor] = arr[i];
            arr[i] = temp;
        }
    }

    public static void main(String[] args) {
        int[] arr = {30, 15, 21, 88};
        System.out.println("Array original:");
        printArray(arr);

        selectionSort(arr);

        System.out.println("Array ordenado:");
        printArray(arr);
    }

    public static void printArray(int[] arr) {
        int n = arr.length;
        for (int i = 0; i < n; i++) {
            System.out.print(arr[i] + " ");
        }
        System.out.println();
    
    }
  
}
