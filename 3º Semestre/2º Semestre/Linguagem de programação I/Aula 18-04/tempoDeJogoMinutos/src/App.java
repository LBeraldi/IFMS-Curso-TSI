import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner input = new Scanner(System.in);

        // lê a hora inicial, minuto inicial, hora final e minuto final do jogo
        System.out.print("Digite a hora inicial do jogo (entre 0 e 23): ");
        int horaInicial = input.nextInt();

        System.out.print("Digite o minuto inicial do jogo (entre 0 e 59): ");
        int minutoInicial = input.nextInt();

        System.out.print("Digite a hora final do jogo (entre 0 e 23): ");
        int horaFinal = input.nextInt();

        System.out.print("Digite o minuto final do jogo (entre 0 e 59): ");
        int minutoFinal = input.nextInt();

        // calcula a duração do jogo em minutos
        int duracao;

        if (horaInicial < horaFinal || (horaInicial == horaFinal && minutoInicial < minutoFinal)) {
            duracao = (horaFinal - horaInicial) * 60 + (minutoFinal - minutoInicial);
        } else {
            duracao = (24 - horaInicial + horaFinal) * 60 + (minutoFinal - minutoInicial);
        }

        // exibe a duração do jogo
        System.out.printf("A duração do jogo foi de %d hora(s) e %d minuto(s).\n", duracao / 60, duracao % 60);
    }
}
    }

