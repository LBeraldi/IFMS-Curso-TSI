import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);

        // lê os três valores digitados pelo usuário
        int numero1 = input.nextInt();

        int numero2 = input.nextInt();

        int numero3 = input.nextInt();

        // ordena os números em ordem crescente
        int menor, medio, maior;

        if (numero1 < numero2 && numero1 < numero3) {
            menor = numero1;
            if (numero2 < numero3) {
                medio = numero2;
                maior = numero3;
            } else {
                medio = numero3;
                maior = numero2;
            }
        } else if (numero2 < numero1 && numero2 < numero3) {
            menor = numero2;
            if (numero1 < numero3) {
                medio = numero1;
                maior = numero3;
            } else {
                medio = numero3;
           maior = numero1;
            }
        } else {
            menor = numero3;
            if (numero1 < numero2) {
                medio = numero1;
                maior = numero2;
            } else {
                medio = numero2;
                maior = numero1;
            }
        }

        // exibe os números ordenados em ordem crescente
        System.out.println(menor + "\n" + medio + "\n" + maior);

        // exibe uma linha em branco
        System.out.println();

        // exibe os números na sequência em que foram lidos
        System.out.println(numero1 + "\n" + numero2 + "\n" + numero3);
    }

}
